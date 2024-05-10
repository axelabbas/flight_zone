import 'dart:convert';

import 'package:flight_zone/features/home/ui/widgets/locationCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationsGrid extends StatelessWidget {
  LocationsGrid({super.key});
  final data = jsonDecode('''
{
  "code": 200,
  "status": "succeed",
  "data": [
    {
      "countryName": "فرنسا",
      "cityName": "باريس",
      "imageURL": "https://images.pexels.com/photos/532826/pexels-photo-532826.jpeg?auto=compress&cs=tinysrgb&w=600"
    },
    {
      "countryName": "تركيا",
      "cityName": "اسطنبول",
      "imageURL": "https://t3.ftcdn.net/jpg/00/87/16/40/360_F_87164057_AAF0KRfPw8ifqoBRjyxOAgzKcvKux0Hy.jpg"
    },
    {
      "countryName": "إيطاليا",
      "cityName": "روما",
      "imageURL": "https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9tZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "countryName": "الولايات المتحدة",
      "cityName": "نيويورك",
      "imageURL": "https://media.istockphoto.com/id/1715020172/photo/statue-of-liberty-and-new-york-city-skyline-with-brooklyn-bridge-manhattan-high-rises-and.webp?b=1&s=170667a&w=0&k=20&c=jXsPEYvz9Jz-ELH_f1XUR_6bo9XIbk7ugL9Ch2j2Jr4="
    }
  ]
}

''') as Map<String, dynamic>;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data['data'].length,
          padding: EdgeInsets.only(bottom: 20.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 15.h,
            childAspectRatio: 1 / 1.3,
          ),
          itemBuilder: ((context, index) {
            return LocationCard(
              imagePath: data['data'][index]['imageURL'] as String,
              title: data['data'][index]['countryName'] as String,
              subTitle: data['data'][index]['cityName'] as String,
            );
          })),
    );
  }
}
