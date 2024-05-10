import 'package:flight_zone/features/home/ui/widgets/homeTicket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsViewer extends StatelessWidget {
  const TicketsViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 200.h,
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(right: 20.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: HomeTicket(),
          );
        },
      ),
    );
  }
}
