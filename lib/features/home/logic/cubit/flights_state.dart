import 'package:freezed_annotation/freezed_annotation.dart';

part 'flights_state.freezed.dart';

@freezed
class FlightsState<T> with _$FlightsState<T> {
  const factory FlightsState.initial() = _Initial;
  const factory FlightsState.loading() = Loading;
  const factory FlightsState.success(T data) = Success<T>;
  const factory FlightsState.error(String message) = Error;
}
