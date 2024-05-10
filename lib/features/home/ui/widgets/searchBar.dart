import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySearchBar extends StatelessWidget {
  MySearchBar({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: searchController,
      hintText: "ابحث عن رحله",
      leading: const Icon(
        Icons.search,
        color: MyColors.primaryGreen,
      ),
      hintStyle: MaterialStateProperty.all(
        MyTextStyles.regular12.copyWith(
          color: MyColors.textGrey,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        MyTextStyles.regular12.copyWith(color: Colors.white),
      ),
      trailing: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mic_outlined,
            size: 18.sp,
            color: MyColors.textGrey,
          ),
        )
      ],
      backgroundColor: MaterialStateProperty.all<Color>(MyColors.bgGrey),
    );
  }
}
