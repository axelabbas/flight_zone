import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.list_rounded,
              color: Colors.white,
              size: 25.r,
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: MyColors.primaryGreen,
              child: CircleAvatar(
                radius: 24.r,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
