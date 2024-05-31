import 'package:bloc/bloc.dart';
import 'package:flight_zone/features/home/data/repos/flights_repo.dart';
import 'package:flight_zone/features/home/logic/cubit/flights_state.dart';

class FlightsCubit extends Cubit<FlightsState> {
  final FlightsRepo _flightsRepo;
  FlightsCubit(this._flightsRepo) : super(const FlightsState.initial());

  void emitFlightStates() async {
    emit(const FlightsState.loading());
    final response = await _flightsRepo.getFlights();
    response.when(success: (data) {
      emit(FlightsState.success(data));
    }, error: (error) {
      emit(FlightsState.error(
          error.apiErrorModel.message ?? 'Unkown Error $error'));
    });
  }
}
