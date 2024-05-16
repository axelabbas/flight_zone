import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final double height;
  final double? borderRadius;
  final String text;
  final Function()? onPressed;
  final Color color;
  final TextStyle? textStyle;

  PrimaryButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      this.textStyle,
      this.onPressed,
      this.color = MyColors.primaryGreen,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(width, height),
        ),
        backgroundColor: MaterialStateColor.resolveWith((states) => color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            side: const BorderSide(color: MyColors.bgGrey, width: 1),
          ),
        ),
      ),
      child: Text(
        text,
        style:
            textStyle ?? MyTextStyles.bold14.copyWith(color: MyColors.bgBlack),
      ),
    );
  }
}
