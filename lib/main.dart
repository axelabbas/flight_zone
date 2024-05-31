import 'package:flight_zone/core/di/injection.dart';
import 'package:flight_zone/flightzoneApp.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupInjection();
  runApp(
    FlightzoneApp(),
  );
}
