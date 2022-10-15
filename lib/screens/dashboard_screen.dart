import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/home_screen.dart';

import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: Dimensions.getHeight(0, height),
                left: Dimensions.getWidth(0, width),
                child: Container(
                  width: width,
                  height: Dimensions.getHeight(530, height),
                  decoration: BoxDecoration(
                    color: AppColors.tertiaryColor,
                  ),
                ),
              ),
              Positioned(
                bottom: Dimensions.getHeight(0, height),
                left: Dimensions.getWidth(14, width),
                child: Container(
                  width: Dimensions.getWidth(400, width),
                  height: Dimensions.getHeight(610, height),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: AppColors.tertiaryColor,
                  ),
                ),
              ),
              Positioned(
                top: Dimensions.getHeight(40, height),
                right: Dimensions.getWidth(25, width),
                child: GestureDetector(
                  onTap: () {
                    context.read<HomeScreenProvider>().index = 2;
                  },
                  child: Container(
                    width: Dimensions.getWidth(60, width),
                    height: Dimensions.getHeight(60, height),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.tertiaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'M',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      );
  }
}

