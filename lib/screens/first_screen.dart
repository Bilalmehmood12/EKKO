import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/login_screen.dart';
import 'package:ekko/screens/sign_up_step_one_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
              top: Dimensions.getHeight(88-40, height),
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
              top: Dimensions.getHeight(68-40, height),
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
              top: Dimensions.getHeight(44-40, height),
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
              top: Dimensions.getHeight(135-40, height),
              left: Dimensions.getWidth(28, width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Dimensions.getWidth(373, width),
                    height: Dimensions.getHeight(104, height),
                    child: const Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  SizedBox(height: Dimensions.getHeight(12, height),),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                      width: Dimensions.getWidth(315, width),
                      height: Dimensions.getHeight(33, height),
                      child: const Image(
                        image: AssetImage('assets/images/text.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(392 - 44, height),
              left: Dimensions.getWidth(-87, width),
              child: SizedBox(
                width: Dimensions.getWidth(560, width),
                height: Dimensions.getHeight(277, height),
                child: const Image(
                  image: AssetImage('assets/images/first_screen_image.png'),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(720, height),
              left: Dimensions.getWidth(46, width),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LogIn())),
                child: Container(
                    width: Dimensions.getWidth(335, width),
                    height: Dimensions.getHeight(60, height),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.tertiaryColor,
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: AppColors.primaryColor,
                      ),
                    ))),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(792, height),
              left: Dimensions.getWidth(65, width),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                      color: AppColors.tertiaryColor,
                    ),
                  ),
                  SizedBox(width: Dimensions.getWidth(8, width),),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpStepOne())),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
