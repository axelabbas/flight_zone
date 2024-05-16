import 'package:flight_zone/core/routing/routes.dart';
import 'package:flight_zone/features/bnb.dart';
import 'package:flight_zone/features/flight_details/ui/flight_details.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.flightDetails:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => FlightDetailsScreen(
                  flightDetails: args,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                textDirection: TextDirection.rtl, child: bottomNav()));
    }
  }
}
