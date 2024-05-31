import 'package:dio/dio.dart';
import 'package:flight_zone/core/networking/api_services.dart';
import 'package:flight_zone/core/networking/dio_factory.dart';
import 'package:flight_zone/features/home/data/repos/flights_repo.dart';
import 'package:flight_zone/features/home/logic/cubit/flights_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future setupInjection() async {
  Dio dio = DioFactory.getDio();

  // Registering the api services
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // Registering the flights repo
  getIt.registerLazySingleton<FlightsRepo>(() => FlightsRepo(getIt()));
  // Registering the flights cubit
  getIt.registerLazySingleton<FlightsCubit>(() => FlightsCubit(getIt()));
}
