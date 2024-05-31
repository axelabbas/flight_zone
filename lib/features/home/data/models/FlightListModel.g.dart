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
    );

Map<String, dynamic> _$FlightListModelToJson(FlightListModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

AvailableFlightModel _$AvailableFlightModelFromJson(
        Map<String, dynamic> json) =>
    AvailableFlightModel(
      fromAirPort: json['from_airport'] as String?,
      fromCity: json['from_city'] as String?,
      date: json['date_time'] as String?,
      flightNumber: json['flight_number'] as String?,
      duration: json['flight_duration'] as String?,
      distance: (json['distance_km'] as num?)?.toInt(),
      airlineName: json['airline_name'] as String?,
      price: (json['price_USD'] as num?)?.toInt(),
      toAirPort: json['to_airport'] as String?,
      toCity: json['to_city'] as String?,
    );

Map<String, dynamic> _$AvailableFlightModelToJson(
        AvailableFlightModel instance) =>
    <String, dynamic>{
      'from_airport': instance.fromAirPort,
      'from_city': instance.fromCity,
      'date_time': instance.date,
      'flight_number': instance.flightNumber,
      'flight_duration': instance.duration,
      'distance_km': instance.distance,
      'airline_name': instance.airlineName,
      'price_USD': instance.price,
      'to_airport': instance.toAirPort,
      'to_city': instance.toCity,
    };
