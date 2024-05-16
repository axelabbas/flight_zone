import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final Function()? onTap;
  final Widget? trailing;

  SettingTile({
    super.key,
    required this.title,
    this.onTap,
    this.textStyle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title,
          style: textStyle ??
              MyTextStyles.regular14.copyWith(color: Colors.white)),
      trailing: trailing ??
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 14.sp,
          ),
    );
  }
}
