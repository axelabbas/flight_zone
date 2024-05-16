import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flutter/material.dart';

class FlightDetailsScreen extends StatelessWidget {
  FlightDetailsScreen({super.key, required this.flightDetails});
  final Map<String, dynamic> flightDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBlack,
      appBar: AppBar(
        title: const Text("Flight Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(flightDetails.toString()),
          ],
        ),
      ),
    );
  }
}
