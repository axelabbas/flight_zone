import 'package:flight_zone/core/routing/routes.dart';
import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flight_zone/core/widgets/customAppBar.dart';
import 'package:flight_zone/features/home/logic/cubit/flights_cubit.dart';
import 'package:flight_zone/features/home/logic/cubit/flights_state.dart';
import 'package:flight_zone/features/home/ui/widgets/locationsGrid.dart';
import 'package:flight_zone/features/home/ui/widgets/searchBar.dart';
import 'package:flight_zone/features/home/ui/widgets/ticketsViewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBlack,
      appBar: LogoAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const MyAppBar(),
                SizedBox(
                  height: 10.h,
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
                          style: MyTextStyles.regular14.copyWith(
                            color: MyColors.primaryGreen,
                          ),
                        ),
                        Text(
                          "وين تحب تسافر؟",
                          style: MyTextStyles.bold18.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: MySearchBar(),
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
                          style: MyTextStyles.regular12.copyWith(
                            color: MyColors.textGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TicketsViewer(),
                SizedBox(
                  height: 15.h,
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
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.login);
                        },
                        child: Text(
                          "عرض الكل",
                          style: MyTextStyles.regular12.copyWith(
                            color: MyColors.textGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                LocationsGrid(),
                BlocListener<FlightsCubit, FlightsState>(
                  listenWhen: (previous, current) =>
                      current is Loading ||
                      current is Success ||
                      current is Error,
                  listener: (context, state) {
                    state.whenOrNull(
                      loading: () {
                        print("loading");

                        showDialog(
                          context: context,
                          builder: (context) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      success: (loginResponse) {
                        print("DONEE YIPPIEES");
                      },
                      error: (error) {
                        print("$error");

                        showDialog(
                          context: context,
                          builder: (context) =>
                              Center(child: Text("error $error")),
                        );
                      },
                    );
                  },
                  child: const SizedBox.shrink(),
                ),
              ]),
        ),
      ),
    );
  }

  void getData() {
    print('Getting data');
    context.read<FlightsCubit>().emitFlightStates();
  }
}
