import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    Key? key,
    required this.height,
    required this.width, required this.text, this.onTap,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.getHeight(75-44, height),
      left: Dimensions.getWidth(20, width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap ?? () {},
            child: SizedBox(
              width: Dimensions.getWidth(40, width),
              height: Dimensions.getHeight(40, height),
              child: Icon(Icons.arrow_back_ios_rounded, color: AppColors.tertiaryColor,),
            ),
          ),
          const SizedBox(width: 5,),
          Text(text, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.tertiaryColor
          ),)
        ],
      ),
    );
  }
}