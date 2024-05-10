import 'dart:convert';

import 'package:flight_zone/features/home/ui/widgets/homeTicket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsViewer extends StatelessWidget {
  TicketsViewer({super.key});
  final data = jsonDecode('''
{
  "code": 200,
  "status": "نجاح",
  "data": [
    {
      "fromAirPort": "CDG",
      "fromCity": "باريس",
      "date": "6/25 , 11:30 ص",
      "flightNumber": "A1252B49",
      "time": "2 ساعة",
      "distance": "35 كم",
      "flyingCompany": "الخطوط الجوية الفرنسية",
      "price": "\$250",
      "toAirPort": "JFK",
      "toCity": "نيويورك"
    },
    {
      "fromAirPort": "FCO",
      "fromCity": "روما",
      "date": "6/25 , 11:30 ص",
      "flightNumber": "B2398C65",
      "time": "3 ساعات",
      "distance": "50 كم",
      "flyingCompany": "الطيران الإيطالي",
      "price": "\$300",
      "toAirPort": "LAX",
      "toCity": "لوس أنجلوس"
    },
    {
      "fromAirPort": "JFK",
      "fromCity": "نيويورك",
      "date": "6/25 , 11:30 ص",
      "flightNumber": "C3541D78",
      "time": "5 ساعات",
      "distance": "100 كم",
      "flyingCompany": "شركة دلتا للطيران",
      "price": "\$400",
      "toAirPort": "LHR",
      "toCity": "لندن"
    }
  ]
}

''') as Map<String, dynamic>;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 220.h,
      child: ListView.builder(
        itemCount: data['data'].length,
        padding: EdgeInsets.only(right: 20.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          var currentData = data["data"][index];
          return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Center(
                child: HomeTicket(
              fromShort: currentData["fromAirPort"],
              fromLong: currentData["fromCity"],
              toShort: currentData["toAirPort"],
              toLong: currentData["toCity"],
              flightNumber: currentData["flightNumber"],
              date: currentData["date"],
              flyingCompany: currentData["flyingCompany"],
              price: currentData["price"],
            )),
          );
        },
      ),
    );
  }
}
