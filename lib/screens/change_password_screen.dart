import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:ekko/widgets/text_field_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Stack(
          children: [
            CustomBackArrow(height: height, width: width, text: "Password", onTap: () =>  context.read<HomeScreenProvider>().screen = 2,),
            Positioned(
              top: Dimensions.getHeight(366-44, height),
              left: Dimensions.getWidth(0, width),
              child: Container(
                width: width,
                height: Dimensions.getHeight(500, height),
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(300-44, height),
              left: Dimensions.getWidth(14, width),
              child: Container(
                width: Dimensions.getWidth(400, width),
                height: Dimensions.getHeight(540, height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: AppColors.tertiaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.getWidth(26, width),
                      right: Dimensions.getWidth(26, width),
                      top: Dimensions.getHeight(54, height)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Reset Your\n Password",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: Dimensions.getHeight(15, height),
                      ),
                      Text(
                        "Did someone forget their\n            password?",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: Dimensions.getHeight(40, height),
                      ),
                      CustomTextField(
                          width: width,
                          height: height,
                          lead: 'assets/images/new_password.png',
                          text: 'New Password'),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                          width: width,
                          height: height,
                          lead: 'assets/images/new_password1.png',
                          text: 'Confirm Password'),
                      SizedBox(
                        height: Dimensions.getHeight(50, height),
                      ),
                      TextIconButton(
                          width: width,
                          height: height,
                          text: 'Done',
                          asset: 'assets/images/done1.png',
                          color: AppColors.tertiaryColor,
                          background: AppColors.secondaryColor),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(137-44, height),
              left: Dimensions.getWidth(211, width),
              child: Container(
                width: Dimensions.getWidth(62, width),
                height: Dimensions.getHeight(62, height),
                decoration: BoxDecoration(shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0),
                          const Color(0xff32EAB1).withOpacity(0.2),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(153-44, height),
              left: Dimensions.getWidth(161, width),
              child: Container(
                width: Dimensions.getWidth(106, width),
                height: Dimensions.getHeight(106, height),
                decoration: BoxDecoration(shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0),
                          const Color(0xff32EAB1).withOpacity(0.2),
                        ])),
                child: Image.asset('assets/images/password1.png', scale: 6,),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(161-44, height),
              left: Dimensions.getWidth(265, width),
              child: Container(
                width: Dimensions.getWidth(47, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(154-44, height),
              left: Dimensions.getWidth(288, width),
              child: Container(
                width: Dimensions.getWidth(23, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(223-44, height),
              left: Dimensions.getWidth(117, width),
              child: Container(
                width: Dimensions.getWidth(32, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(223-44, height),
              left: Dimensions.getWidth(259, width),
              child: Container(
                width: Dimensions.getWidth(30, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(230-44, height),
              left: Dimensions.getWidth(264, width),
              child: Container(
                width: Dimensions.getWidth(33, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(154-44, height),
              left: Dimensions.getWidth(140, width),
              child: Container(
                width: Dimensions.getWidth(22, width),
                height: Dimensions.getHeight(3, height),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0.16),
                          const Color(0xff32EAB1).withOpacity(0),
                        ])),
              ),
            ),
          ],
        )
    );
  }
}
