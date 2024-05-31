import 'package:dio/dio.dart';
import 'package:flight_zone/core/networking/api_constants.dart';
import 'package:flight_zone/features/home/data/models/FlightListModel.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl, )
abstract class ApiServices {
  // injecting dio into the services, meaning we will use services to make api calls
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(ApiConstants.availableFlights)
  Future<FlightListModel> getAvailableFlights();
}
