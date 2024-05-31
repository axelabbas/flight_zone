import 'package:flight_zone/core/helpers/nav.dart';
import 'package:flight_zone/features/login/data/models/loginModels.dart';
import 'package:flight_zone/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text("Login Screen"),
        ElevatedButton(
          onPressed: () {
            context.read<LoginCubit>().emitLoginStates();
          },
          child: const Text("Login"),
        ),
        BlocListener<LoginCubit, LoginState>(
          listenWhen: (previous, current) =>
              current is Loading || current is Success || current is Error,
          listener: (context, state) {
            state.whenOrNull(
              loading: () {
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              success: (loginResponse) {
                context.pop();
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: Text("yes"),
                  ),
                );
                print("DONEE YIPPIEES");
              },
              error: (error) {
                context.pop();
                showDialog(
                  context: context,
                  builder: (context) => Center(child: Text("error $error")),
                );
              },
            );
          },
          child: SizedBox.shrink(),
        )
      ]),
    );
  }
}
