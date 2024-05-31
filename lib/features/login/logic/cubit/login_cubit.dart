import 'package:bloc/bloc.dart';
import 'package:flight_zone/features/login/data/models/loginModels.dart';
import 'package:flight_zone/features/login/data/repos/loginRepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
        LoginRequestModel(phoneNumber: "07711914860", password: "nn22nn33"));
    response.when(success: (LoginResponseModel response) {
      emit(LoginState.success(response));
    }, error: (error) {
      emit(LoginState.error(
          error.apiErrorModel.message ?? 'Unkown Error $error'));
    });
  }
}
