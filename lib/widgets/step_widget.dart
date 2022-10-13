import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({
    Key? key,
    required this.width,
    required this.height, required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.getWidth(337, width),
      height: Dimensions.getHeight(40, height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Step $text of 2",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Dimensions.getWidth(167, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(2), bottomLeft: Radius.circular(2))
                ),
              ),
              Container(
                width: Dimensions.getWidth(167, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    color: text != '1' ? AppColors.primaryColor: AppColors.primaryColor.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(2), bottomRight: Radius.circular(2))
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}