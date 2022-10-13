import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TherapyCard extends StatelessWidget {
  const TherapyCard({
    Key? key,
    required this.height,
    required this.width, required this.therapy, required this.therapyName,
  }) : super(key: key);

  final double height;
  final double width;
  final String therapy;
  final String therapyName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      width: double.infinity,
      height: Dimensions.getHeight(170, height),
      decoration: BoxDecoration(
          color: AppColors.tertiaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.26),
                offset: const Offset(2, 2),
                blurRadius: 4,
                spreadRadius: 1
            ),
          ]
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: Dimensions.getWidth(124, width),
            height: double.infinity,
            child: Image.asset(therapy, scale: 5.5,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Spacer(),
              Text(therapyName, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor
              ),),
              const Spacer(),
              const Spacer(),
              Text('Level : 3', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor
              ),),
              const Spacer(),
              Text('Time : 30 sec', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor
              ),),
              const Spacer(),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}