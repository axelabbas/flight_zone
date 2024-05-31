import 'package:flight_zone/core/networking/api_result.dart';
import 'package:flight_zone/core/networking/api_services.dart';
import 'package:flight_zone/core/networking/errors/api_error_handler.dart';
import 'package:flight_zone/features/home/data/models/FlightListModel.dart';

class FlightsRepo {
  final ApiServices _apiServices;
  // injecting the api services into the repo
  // meaning to use the repo, we need to pass the api services
  FlightsRepo(this._apiServices);

  Future<ApiResult<FlightListModel>> getFlights() async {
    try {
      final response = await _apiServices.getAvailableFlights();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}
