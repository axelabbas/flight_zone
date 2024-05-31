import 'package:flight_zone/core/networking/api_result.dart';
import 'package:flight_zone/core/networking/api_services.dart';
import 'package:flight_zone/core/networking/errors/api_error_handler.dart';
import 'package:flight_zone/features/login/data/models/loginModels.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await _apiServices.login(loginRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}
