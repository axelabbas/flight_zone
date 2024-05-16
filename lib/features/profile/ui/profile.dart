import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/customAppBar.dart';
import 'package:flight_zone/core/widgets/primaryButton.dart';
import 'package:flight_zone/features/profile/ui/widgets/profileImage.dart';
import 'package:flight_zone/features/profile/ui/widgets/settingSection.dart';
import 'package:flight_zone/features/profile/ui/widgets/settingTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBlack,
      appBar: const TextAppbar(title: "الحساب الشخصي"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                ProfileImage(
                  imagePath: "assets/images/profile.jpg",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text("ابوالفضل عبدالعباس",
                    style: MyTextStyles.bold16.copyWith(color: Colors.white)),
                Text("077134291911",
                    style: MyTextStyles.regular12
                        .copyWith(color: MyColors.textGrey)),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryButton(
                  width: 150.h,
                  height: 45.w,
                  text: "معلومات الحساب",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SettingSection(
                    sectionTitle: "الاعدادات",
                    children: [
                      SettingTile(
                        title: "اللغة",
                      ),
                      SettingTile(title: "الاشعارات"),
                      SettingTile(title: "الخصوصية"),
                      SettingTile(title: "العملة"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SettingSection(
                    sectionTitle: "حول",
                    children: [
                      SettingTile(title: "خدمة العملاء"),
                      SettingTile(title: "الشروط والاحكام"),
                      SettingTile(title: "سياسة الخصوصية"),
                      SettingTile(title: "نبذه"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SettingSection(
                    sectionTitle: "",
                    children: [
                      SettingTile(title: "تسجيل الخروج"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
