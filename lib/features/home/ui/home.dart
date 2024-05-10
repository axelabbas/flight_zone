import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/features/home/ui/widgets/homeTicket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: MyColors.primaryGreen,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: MyColors.bgBlack,
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مرحبا فضل!",
                        style: MyTextStyles.bold12.copyWith(
                          color: MyColors.primaryGreen,
                        ),
                      ),
                      Text(
                        "وين تحب تسافر؟",
                        style: MyTextStyles.bold16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                child: SearchBar(
                  controller: searchController,
                  hintText: "ابحث عن رحله",
                  leading: const Icon(
                    Icons.search,
                    color: MyColors.primaryGreen,
                  ),
                  hintStyle: MaterialStateProperty.all(
                    MyTextStyles.regular10.copyWith(
                      color: MyColors.textGrey,
                    ),
                  ),
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_outlined,
                        color: MyColors.textGrey,
                      ),
                    )
                  ],
                  backgroundColor:
                      MaterialStateProperty.all<Color>(MyColors.bgGrey),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Text(
                      "الرحلات المتوفره",
                      style: MyTextStyles.regular14.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: MyTextStyles.regular10.copyWith(
                          color: MyColors.textGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                alignment: Alignment.centerRight,
                // margin: EdgeInsets.only(right: 20.w),
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
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                    child: Text(
                      "وجهات شائعه",
                      style: MyTextStyles.regular14.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: MyTextStyles.regular10.copyWith(
                          color: MyColors.textGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w, vertical: 8.h),
                        child: Container(
                          height: 200.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: MyColors.bgGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    })),
              )
              // HomeTicket(),
            ]),
      ),
    );
  }
}
