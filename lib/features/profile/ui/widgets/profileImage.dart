import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final String imagePath;
  ProfileImage(
      {super.key,
      this.height = 100,
      this.width = 100,
      this.borderRadius = 25,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.grey,
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
