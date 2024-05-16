import 'package:flight_zone/core/routing/router.dart';
import 'package:flight_zone/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightzoneApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  FlightzoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flightzone',
        theme: ThemeData(
          fontFamily: "IBM",
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.bnb,
        // home: const Directionality(
        //     textDirection: TextDirection.rtl, child: HomeScreen()),
      ),
    );
  }
}
