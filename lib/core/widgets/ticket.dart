import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/seperator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketShape extends StatelessWidget {
  const TicketShape(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      required this.seperatorColor,
      required this.notchColor,
      required this.notchSize,
      required this.fromShort,
      required this.fromLong,
      required this.toShort,
      required this.toLong,
      required this.flightNumber,
      required this.date,
      required this.bottomRow,
      this.padding = const EdgeInsets.all(20)})
      : super(key: key);
  final double height;
  final double width;
  final Widget bottomRow;
  final double notchSize;
  final Color color;
  final Color notchColor;
  final Color seperatorColor;
  final String fromShort;
  final String fromLong;
  final String toShort;
  final String toLong;
  final String flightNumber;
  final String date;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: padding,
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fromShort,
                        style: MyTextStyles.bold14,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        fromLong,
                        style: MyTextStyles.regular8,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "2h",
                        style: MyTextStyles.regular8
                            .copyWith(color: MyColors.textGrey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: MyColors.primaryGreen,
                            size: 8.sp,
                          ),
                          SizedBox(
                              width: width / 4,
                              child: const MySeparator(
                                dashWidth: 3,
                                color: MyColors.textGrey,
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.airplanemode_active,
                                color: MyColors.primaryGreen,
                                size: 14.sp,
                              )),
                        ],
                      ),
                      Text(
                        "35km",
                        style: MyTextStyles.regular10
                            .copyWith(color: MyColors.textGrey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        toShort,
                        style: MyTextStyles.bold14,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        toLong,
                        style: MyTextStyles.regular8,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "التاريخ",
                        style: MyTextStyles.regular8
                            .copyWith(color: MyColors.textGrey),
                      ),
                      Text(
                        date,
                        style: MyTextStyles.regular12,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "رقم الرحله",
                        style: MyTextStyles.regular8
                            .copyWith(color: MyColors.textGrey),
                      ),
                      Text(
                        flightNumber,
                        style: MyTextStyles.regular12,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        Positioned(bottom: 5, left: 5, right: 5, child: bottomRow),
        Positioned(
            bottom: (height / 5) + notchSize / 2,
            left: 0,
            right: 0,
            child: MySeparator(
              color: seperatorColor,
            )),
        Positioned(
          bottom: height / 5,
          left: -notchSize / 2,
          child: Container(
            height: notchSize,
            width: notchSize,
            decoration: BoxDecoration(
              color: notchColor,
              borderRadius: BorderRadius.circular(notchSize),
            ),
          ),
        ),
        Positioned(
          bottom: height / 5,
          right: -notchSize / 2,
          child: Container(
            height: notchSize,
            width: notchSize,
            decoration: BoxDecoration(
              color: notchColor,
              borderRadius: BorderRadius.circular(notchSize),
            ),
          ),
        ),
      ],
    );
  }
}
