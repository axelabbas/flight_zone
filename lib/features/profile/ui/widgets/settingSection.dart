import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingSection extends StatelessWidget {
  final String sectionTitle;
  final List<Widget> children;

  const SettingSection(
      {super.key, required this.children, required this.sectionTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(sectionTitle, style: MyTextStyles.bold14),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            color: MyColors.bgGrey,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: children
                .map((e) => Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: MyColors.bgBlack,
                            width: 0.3,
                          ),
                        ),
                      ),
                      child: e,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
