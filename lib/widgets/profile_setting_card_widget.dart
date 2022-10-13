import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileSettingCard extends StatelessWidget {
  const ProfileSettingCard({
    Key? key,
    required this.width,
    required this.height,
    required this.icon,
    required this.setting,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final double height;
  final String icon;
  final String setting;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: width,
        height: Dimensions.getHeight(114, height),
        color: AppColors.tertiaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    icon,
                    scale: 5,
                  ),
                  const SizedBox(width: 30,),
                  Text(
                    setting,
                    style: TextStyle(
                        color: setting == 'Sign Out' ? const Color(0xFFEF3327): AppColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),

                  SizedBox(
                      width: Dimensions.getWidth(8, width),
                      height: Dimensions.getHeight(16, height),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.primaryColor.withOpacity(0.3),
                      )),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: Dimensions.getWidth(400, width),
              child: Divider(
                height: 0,
                thickness: 1,
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
