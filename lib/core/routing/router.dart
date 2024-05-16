import 'package:flight_zone/core/routing/routes.dart';
import 'package:flight_zone/features/bnb.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.login:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                
                textDirection: TextDirection.rtl, child: bottomNav()));
    }
  }
}
