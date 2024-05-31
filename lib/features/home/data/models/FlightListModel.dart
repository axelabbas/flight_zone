import 'package:json_annotation/json_annotation.dart';

part 'FlightListModel.g.dart';

@JsonSerializable()
class FlightListModel {
  String? message;
  List<AvailableFlightModel>? data;
  int? code;

  FlightListModel({
    this.message,
    this.data,
    this.code,
  });

  factory FlightListModel.fromJson(Map<String, dynamic> json) =>
      _$FlightListModelFromJson(json);
}

@JsonSerializable()
class AvailableFlightModel {
  @JsonKey(name: 'from_airport')
  String? fromAirPort;
  @JsonKey(name: 'from_city')
  String? fromCity;
  @JsonKey(name: 'date_time')
  String? date;
  @JsonKey(name: 'flight_number')
  String? flightNumber;
  @JsonKey(name: 'flight_duration')
  String? duration;
  @JsonKey(name: 'distance_km')
  int? distance;
  @JsonKey(name: 'airline_name')
  String? airlineName;
  @JsonKey(name: 'price_USD')
  int? price;
  @JsonKey(name: 'to_airport')
  String? toAirPort;
  @JsonKey(name: 'to_city')
  String? toCity;

  AvailableFlightModel({
    this.fromAirPort,
    this.fromCity,
    this.date,
    this.flightNumber,
    this.duration,
    this.distance,
    this.airlineName,
    this.price,
    this.toAirPort,
    this.toCity,
  });

  factory AvailableFlightModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableFlightModelFromJson(json);
}
