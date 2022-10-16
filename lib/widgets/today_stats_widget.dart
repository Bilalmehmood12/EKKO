import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TodayStatsWidget extends StatelessWidget {
  const TodayStatsWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.bColor,
    required this.icon,
    required this.number,
    required this.task,
  }) : super(key: key);

  final double width;
  final double height;
  final Color bColor;
  final String icon, number, task;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: Dimensions.getWidth(100, width),
      height: Dimensions.getHeight(130, height),
      decoration: BoxDecoration(
        color: bColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              width: Dimensions.getWidth(34, width),
              height: Dimensions.getHeight(34, height),
              decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                icon,
                scale: 5,
              )),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              number,
              style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              task,
              style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}