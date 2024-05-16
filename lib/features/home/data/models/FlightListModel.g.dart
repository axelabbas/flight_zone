// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FlightListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightListModel _$FlightListModelFromJson(Map<String, dynamic> json) =>
    FlightListModel(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AvailableFlightModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$FlightListModelToJson(FlightListModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'status': instance.status,
    };

AvailableFlightModel _$AvailableFlightModelFromJson(
        Map<String, dynamic> json) =>
    AvailableFlightModel(
      fromAirPort: json['fromAirPort'] as String?,
      fromCity: json['fromCity'] as String?,
      date: json['date'] as String?,
      flightNumber: json['flightNumber'] as String?,
      time: json['time'] as String?,
      distance: json['distance'] as String?,
      flyingCompany: json['flyingCompany'] as String?,
      price: json['price'] as String?,
      toAirPort: json['toAirPort'] as String?,
      toCity: json['toCity'] as String?,
    );

Map<String, dynamic> _$AvailableFlightModelToJson(
        AvailableFlightModel instance) =>
    <String, dynamic>{
      'fromAirPort': instance.fromAirPort,
      'fromCity': instance.fromCity,
      'date': instance.date,
      'flightNumber': instance.flightNumber,
      'time': instance.time,
      'distance': instance.distance,
      'flyingCompany': instance.flyingCompany,
      'price': instance.price,
      'toAirPort': instance.toAirPort,
      'toCity': instance.toCity,
    };
