import 'package:json_annotation/json_annotation.dart';

part 'FlightListModel.g.dart';

@JsonSerializable()
class FlightListModel {
  String? message;
  List<AvailableFlightModel>? data;
  int? code;
  bool? status;

  FlightListModel({
    this.message,
    this.data,
    this.code,
    this.status,
  });

  factory FlightListModel.fromJson(Map<String, dynamic> json) =>
      _$FlightListModelFromJson(json);
}

@JsonSerializable()
class AvailableFlightModel {
  String? fromAirPort;
  String? fromCity;
  String? date;
  String? flightNumber;
  String? time;
  String? distance;
  String? flyingCompany;
  String? price;
  String? toAirPort;
  String? toCity;

  AvailableFlightModel({
    this.fromAirPort,
    this.fromCity,
    this.date,
    this.flightNumber,
    this.time,
    this.distance,
    this.flyingCompany,
    this.price,
    this.toAirPort,
    this.toCity,
  });

  factory AvailableFlightModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableFlightModelFromJson(json);
}
