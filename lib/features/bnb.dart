import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/features/home/ui/home.dart';
import 'package:flight_zone/features/profile/ui/profile.dart';
import 'package:flight_zone/features/trips/ui/trips.dart';
import 'package:flutter/material.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _pageIndex = 0;
  final List<Widget> _pages = [HomeScreen(), TripsScreen(), ProfileScreen()];
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MyColors.bgGrey2,
          type: BottomNavigationBarType.fixed,  
          selectedItemColor: MyColors.primaryGreen,
          unselectedItemColor: MyColors.textGrey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _pageIndex,
          onTap: (value) => setState(() {
                _pageIndex = value;
                _pageController.jumpToPage(_pageIndex);
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "رحلاتي"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "الحساب"),
          ]),
      body: Center(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
    );
  }
}
