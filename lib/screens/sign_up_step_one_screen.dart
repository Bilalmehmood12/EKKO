import 'package:ekko/screens/sign_up_step_two_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/step_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:ekko/widgets/text_field_widget.dart';

class SignUpStepOne extends StatefulWidget {
  const SignUpStepOne({Key? key}) : super(key: key);

  @override
  State<SignUpStepOne> createState() => _SignUpStepOneState();
}

class _SignUpStepOneState extends State<SignUpStepOne> {
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
                child: Icon(Icons.arrow_back_ios_new_rounded,
                    color: AppColors.tertiaryColor,
                  ),
              ),
              ),
            Positioned(
              top: Dimensions.getHeight(370, height),
              left: Dimensions.getWidth(0, width),
              child: Container(
                  width: width,
                  height: Dimensions.getHeight(422, height),
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
              top: Dimensions.getHeight(360, height),
              left: Dimensions.getWidth(126, width),
              child: Text(
                "Account Info",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(416, height),
              left: Dimensions.getWidth(46, width),
              child: StepWidget(width: width, height: height, text: '1'),
            ),
            Positioned(
              top: Dimensions.getHeight(500, height),
              left: Dimensions.getWidth(46, width),
              child: CustomTextField(width: width, height: height, lead: 'assets/images/email.png', action: 'assets/images/done.png', text: 'Email'),

            ),
            Positioned(
              top: Dimensions.getHeight(590, height),
              left: Dimensions.getWidth(46, width),
              child: CustomTextField(width: width, height: height, lead: 'assets/images/lock.png', action: 'assets/images/eye.png', text: 'Password', obscureText: true,),
            ),
            Positioned(
              top: Dimensions.getHeight(682, height),
              left: Dimensions.getWidth(122, width),
              child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpStepTwo())),
                  child: TextIconButton(width: width, height: height, text: 'Next Step', icon: Icons.arrow_forward_ios_rounded, color: AppColors.tertiaryColor, background: AppColors.secondaryColor,)),
            ),
          ],
        ),
      ),
    );
  }
}


