import 'package:flight_zone/features/home/ui/widgets/locationCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationsGrid extends StatelessWidget {
  const LocationsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 15.h,
            childAspectRatio: 1 / 1.3,
          ),
          itemBuilder: ((context, index) {
            return const LocationCard(
              imagePath: 'assets/images/profile.jpg',
              title: "باريس",
              subTitle: "فرنسا",
            );
          })),
    );
  }
}
