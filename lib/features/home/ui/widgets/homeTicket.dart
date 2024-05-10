import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTicket extends StatelessWidget {
  HomeTicket({super.key});
  final String fromShort = 'مطار بغداد';
  final String fromLong = 'بغداد';
  final String toShort = 'مطار إسطنبول';
  final String toLong = 'اسطنبول';
  final String flightNumber = 'A154B69';
  final String date = '6/25 , 11:30 ص';
  final TextStyle textStyle = MyTextStyles.regular14;
  final double height = 200.h;
  final double width = 300.w;
  final Color backgroundColor = MyColors.bgGrey;
  final Color notchColor = MyColors.bgBlack;
  final double notchSize = 25.r;
  final EdgeInsetsGeometry padding = EdgeInsets.all(15.sp);
  final Widget bottomRow = Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('الخطوط الجويه العراقيه', style: MyTextStyles.regular12),
        Text('\$200', style: MyTextStyles.bold14),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TicketShape(
      height: height,
      width: width,
      bottomRow: bottomRow,
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
    );
  }
}
