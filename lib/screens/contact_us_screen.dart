import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:ekko/widgets/text_field_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Stack(
      children: [
        CustomBackArrow(
          height: height,
          width: width,
          text: 'Contact Us',
          onTap: () {
            context.read<HomeScreenProvider>().screen = 2;
          },
        ),
        Positioned(
          top: Dimensions.getHeight(300, height),
          left: Dimensions.getWidth(0, width),
          child: Container(
            width: width,
            height: Dimensions.getHeight(520, height),
            decoration: BoxDecoration(
              color: AppColors.tertiaryColor,
            ),
          ),
        ),
        Positioned(
          top: Dimensions.getHeight(240, height),
          left: Dimensions.getWidth(14, width),
          child: Container(
            width: Dimensions.getWidth(400, width),
            height: Dimensions.getHeight(570, height),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColors.tertiaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.getWidth(26, width),
                  vertical: Dimensions.getHeight(26, height)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Quick Contact",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.getHeight(24, height),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      width: width,
                      height: height,
                      lead: null,
                      action: null,
                      text: 'Enter Full Name'),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      width: width,
                      height: height,
                      lead: null,
                      action: null,
                      text: 'Enter Email Address'),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      width: width,
                      height: height,
                      lead: null,
                      action: null,
                      text: 'Enter Message',
                      maxLine: 3),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                      child: TextIconButton(
                          width: width,
                          height: height,
                          text: 'Send',
                          icon: Icons.arrow_forward_ios_rounded,
                          color: AppColors.tertiaryColor,
                          background: AppColors.secondaryColor)),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.getHeight(118-44, height),
          left: Dimensions.getWidth(218, width),
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
        Positioned(
          top: Dimensions.getHeight(137-44, height),
          left: Dimensions.getWidth(150, width),
          child: SizedBox(
            width: Dimensions.getWidth(121, width),
            height: Dimensions.getHeight(121, height),
            child: Image.asset('assets/images/contact_us1.png'),
          ),
        ),
      ],
    ));
  }
}
