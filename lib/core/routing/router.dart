import 'package:flight_zone/core/di/injection.dart';
import 'package:flight_zone/core/routing/routes.dart';
import 'package:flight_zone/features/flight_details/ui/flight_details.dart';
import 'package:flight_zone/features/login/logic/cubit/login_cubit.dart';
import 'package:flight_zone/features/login/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.flightDetails:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => FlightDetailsScreen(
                  flightDetails: args,
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (ctx) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
          // const Directionality(
          //   textDirection: TextDirection.rtl,
          //   child: bottomNav(),
          // ),
        );
    }
  }
}
