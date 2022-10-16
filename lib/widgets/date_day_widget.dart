import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class DateDayWidget extends StatelessWidget {
  const DateDayWidget(
      {Key? key,
        required this.width,
        required this.height,
        required this.bColor,
        required this.date,
        required this.day,
        this.event})
      : super(key: key);

  final double width;
  final double height;
  final Color bColor;
  final String date;
  final String day;
  final bool? event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.getWidth(55, width),
      height: Dimensions.getHeight(80, height),
      child: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: Dimensions.getWidth(55, width),
            height: Dimensions.getHeight(80, height),
            decoration: BoxDecoration(
                color: bColor,
                border: bColor == AppColors.secondaryColor
                    ? Border.all(width: 0, color: Colors.transparent)
                    : Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      color: bColor == AppColors.secondaryColor
                          ? AppColors.tertiaryColor
                          : AppColors.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  day,
                  style: TextStyle(
                      color: bColor == AppColors.secondaryColor
                          ? AppColors.tertiaryColor
                          : AppColors.primaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        event == null ?const SizedBox(width: 0,): Positioned(
            top: 1,
            right: 0,
            child: Container(
              width: Dimensions.getWidth(11, width),
              height: Dimensions.getHeight(11, height),
              decoration: BoxDecoration(
                  color: bColor == AppColors.secondaryColor ? AppColors.primaryColor: AppColors.secondaryColor,
                  shape: BoxShape.circle
              ),
            )
        )
      ]),
    );
  }
}
