import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.width,
    required this.height, required this.icons, required this.currentIndex, required this.onTaps
  }) : super(key: key);

  final double width;
  final double height;
  final List<String> icons;
  final List<void Function()?> onTaps;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: Dimensions.getHeight(85, height),
      color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(icons.length, (index) => GestureDetector(
            onTap: onTaps[index],
            child: customIcon(index, currentIndex)
        ),),
      ),
    );
  }

  Widget customIcon(int index, int select) {
    return SizedBox(
      width: width / icons.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          select == index ? Container(
            width: Dimensions.getWidth(42, width),
            height: Dimensions.getHeight(8, height),
            decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.secondaryColor,
                      offset: const Offset(3, 2),
                      blurRadius: 5,
                      spreadRadius: 0
                  )
                ]
            ),
          ) : SizedBox(
            width: Dimensions.getWidth(42, width),
            height: Dimensions.getHeight(8, height),
          ),
          const Spacer(),
          SizedBox(
            width: Dimensions.getWidth(30, width),
            height: Dimensions.getHeight(31, height),
            child: Stack(children: [
              select == index ? Positioned(
                left: 3,
                top: 4,
                child: Opacity(
                  opacity: 0.3,
                  child: SizedBox(
                      width: Dimensions.getWidth(27, width),
                      height: Dimensions.getHeight(27, height),
                      child: Image.asset(icons[index], color: AppColors.secondaryColor,)
                  ),
                ),
              ): const SizedBox(width: 0,),
              SizedBox(
                  width: Dimensions.getWidth(27, width),
                  height: Dimensions.getHeight(27, height),
                  child: Image.asset(icons[index])
              ),
            ]),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
