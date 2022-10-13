import 'package:ekko/screens/first_screen.dart';
import 'package:ekko/screens/home_screen.dart';
import 'package:ekko/screens/sign_up_step_one_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/text_field_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              top: Dimensions.getHeight(66-40, height),
              left: Dimensions.getWidth(29, width),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstScreen())),
                child: Icon(Icons.arrow_back_ios_new_rounded,
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(375-40, height),
              left: Dimensions.getWidth(0, width),
              child: Container(
                width: width,
                height: Dimensions.getHeight(420, height),
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(320-40, height),
              left: Dimensions.getWidth(14, width),
              child: Container(
                width: Dimensions.getWidth(400, width),
                height: Dimensions.getHeight(470, height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: AppColors.tertiaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Dimensions.getHeight(44, height),),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: Dimensions.getHeight(8, height),),
                    Text(
                      "Please sign in to continue.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: Dimensions.getHeight(36, height),),
                    CustomTextField(width: width, height: height, lead: 'assets/images/email.png', action: 'assets/images/done.png', text: 'Email'),
                    SizedBox(height: Dimensions.getHeight(36, height),),
                    CustomTextField(width: width, height: height, lead: 'assets/images/lock.png', action: 'assets/images/eye.png', text: 'Password',obscureText: true,),
                    SizedBox(height: Dimensions.getHeight(36, height),),
                    GestureDetector(
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
                        child: TextIconButton(width: width, height: height, text: 'Login', icon: null, color: AppColors.tertiaryColor, background: AppColors.secondaryColor,)),
                    SizedBox(height: Dimensions.getHeight(8, height),),
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: AppColors.secondaryColor,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(887-40, height),
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
                  SizedBox(width: Dimensions.getWidth(5, width),),
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
