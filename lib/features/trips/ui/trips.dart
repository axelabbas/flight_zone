import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/customAppBar.dart';
import 'package:flight_zone/core/widgets/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TextAppbar(title: "الرحلات الحاليه"),
      backgroundColor: MyColors.bgBlack,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("لم يتم العثور على حجوزات", style: MyTextStyles.bold14),
            Text("ستظهر الرحلات المحجوزه حاليا هنا",
                style: MyTextStyles.regular10),
            SizedBox(
              height: 15.h,
            ),
            PrimaryButton(
              width: 200.w,
              height: 50.w,
              text: "أبحث عن رحلة",  
            ),
          ],
        ),
      )),
    );
  }
}
