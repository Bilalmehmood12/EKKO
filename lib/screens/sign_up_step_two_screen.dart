import 'package:ekko/screens/first_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/step_widget.dart';
import 'package:ekko/widgets/text_field_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpStepTwo extends StatefulWidget {
  const SignUpStepTwo({Key? key}) : super(key: key);

  @override
  State<SignUpStepTwo> createState() => _SignUpStepTwoState();
}

class _SignUpStepTwoState extends State<SignUpStepTwo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: Dimensions.getHeight(88 - 44, height),
              left: Dimensions.getWidth(-52, width),
              child: Container(
                width: Dimensions.getWidth(245, width),
                height: Dimensions.getHeight(245, height),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0),
                          const Color(0xff32EAB1).withOpacity(0.2),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(68 - 44, height),
              left: Dimensions.getWidth(169, width),
              child: Container(
                width: Dimensions.getWidth(89, width),
                height: Dimensions.getHeight(89, height),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0),
                          const Color(0xff32EAB1).withOpacity(0.2),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(44 - 44, height),
              left: Dimensions.getWidth(253, width),
              child: Container(
                width: Dimensions.getWidth(48, width),
                height: Dimensions.getHeight(48, height),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          const Color(0xff55C9A4).withOpacity(0),
                          const Color(0xff32EAB1).withOpacity(0.2),
                        ])),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(156 - 44, height),
              left: Dimensions.getWidth(28, width),
              child: SizedBox(
                width: Dimensions.getWidth(373, width),
                height: Dimensions.getHeight(104, height),
                child: const Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(275 - 44, height),
              left: Dimensions.getWidth(48, width),
              child: SizedBox(
                width: Dimensions.getWidth(315, width),
                height: Dimensions.getHeight(33, height),
                child: const Image(
                  image: AssetImage('assets/images/text.png'),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(66 - 44, height),
              left: Dimensions.getWidth(29, width),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(370, height),
              left: Dimensions.getWidth(0, width),
              child: Container(
                width: width,
                height: Dimensions.getHeight(475, height),
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(320, height),
              left: Dimensions.getWidth(14, width),
              child: Container(
                width: Dimensions.getWidth(400, width),
                height: Dimensions.getHeight(460, height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(340, height),
              left: Dimensions.getWidth(126, width),
              child: Text(
                "Personal Info",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(400, height),
              left: Dimensions.getWidth(46, width),
              child: StepWidget(width: width, height: height, text: '2'),
            ),
            Positioned(
              top: Dimensions.getHeight(480, height),
              left: Dimensions.getWidth(46, width),
              child: CustomTextField(
                  width: width,
                  height: height,
                  lead: 'assets/images/user.png',
                  action: 'assets/images/done.png',
                  text: 'Username'),
            ),
            Positioned(
              top: Dimensions.getHeight(570, height),
              left: Dimensions.getWidth(46, width),
              child: CustomTextField(
                  width: width,
                  height: height,
                  lead: 'assets/images/calendar.png',
                  action: 'assets/images/done.png',
                  text: 'Age'),
            ),
            Positioned(
              top: Dimensions.getHeight(660, height),
              left: Dimensions.getWidth(46, width),
              child: CustomTextField(
                  width: width,
                  height: height,
                  lead: 'assets/images/health.png',
                  action: 'assets/images/done.png',
                  text: 'Diagnosis'),
            ),
            Positioned(
              top: Dimensions.getHeight(750, height),
              left: Dimensions.getWidth(122, width),
              child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen())),
                  child: TextIconButton(
                    width: width,
                    height: height,
                    text: 'Confirm',
                    icon: null,
                    color: AppColors.tertiaryColor,
                    background: AppColors.secondaryColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
