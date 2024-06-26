import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTicket extends StatelessWidget {
  HomeTicket(
      {super.key,
      required this.fromShort,
      required this.fromLong,
      required this.toShort,
      required this.toLong,
      required this.flightNumber,
      required this.date,
      required this.flyingCompany,
      required this.price});
  final String fromShort; // = 'مطار بغداد';
  final String fromLong; // = 'بغداد';
  final String toShort; // = 'مطار إسطنبول';
  final String toLong; // = 'اسطنبول';
  final String flightNumber; // = 'A154B69';
  final String date; // = "6/25 , 11:30 ص";
  final String flyingCompany; // = 'الخطوط الجويه العراقيه';
  final String price; // = '\$200';
  final TextStyle textStyle = MyTextStyles.regular14;
  final double height = 200.h;
  final double width = 300.w;
  final Color backgroundColor = MyColors.bgGrey;
  final Color notchColor = MyColors.bgBlack;
  final double notchSize = 25.r;
  final EdgeInsetsGeometry padding = EdgeInsets.all(15.sp);

  @override
  Widget build(BuildContext context) {
    return TicketShape(
      height: height,
      width: width,
      color: backgroundColor,
      notchSize: notchSize,
      notchColor: notchColor,
      seperatorColor: MyColors.textGrey,
      padding: padding,
      fromShort: fromShort,
      fromLong: fromLong,
      toShort: toShort,
      toLong: toLong,
      flightNumber: flightNumber,
      date: date,
      bottomRow: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(flyingCompany, style: MyTextStyles.regular12),
            Text(price, style: MyTextStyles.bold14),
          ],
        ),
      ),
    );
  }
}
