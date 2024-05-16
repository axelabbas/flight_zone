import 'package:flight_zone/core/themes/Colors.dart';
import 'package:flight_zone/core/themes/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LogoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.bgBlack,
      elevation: 1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Container(
        height: 30.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/logo.png',
            ),
            scale: 1,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TextAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TextAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.bgBlack,
      elevation: 1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Container(
        height: 30.h,
        decoration: const BoxDecoration(),
        child: Text(
          title,
          style: MyTextStyles.bold14,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: Size.fromHeight(50.h),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
//         child: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           automaticallyImplyLeading: false,
//           leading: GestureDetector(
//             onTap: () {},
//             child: Icon(
//               Icons.list_rounded,
//               color: Colors.white,
//               size: 25.r,
//             ),
//           ),
//           actions: [
//             CircleAvatar(
//               radius: 25.r,
//               backgroundColor: MyColors.primaryGreen,
//               child: CircleAvatar(
//                 radius: 24.r,
//                 backgroundImage: AssetImage('assets/images/profile.jpg'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
