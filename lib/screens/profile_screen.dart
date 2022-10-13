
import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/first_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:ekko/widgets/profile_setting_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final settings = [
    'Personal Information',
    'Session History',
    'Change Password',
    'Contact Us',
    'Sign Out'
  ];
  final icons = [
    'assets/images/personal_information.png',
    'assets/images/history.png',
    'assets/images/password.png',
    'assets/images/contact_us.png',
    'assets/images/sign_out.png',
  ];
  @override
  Widget build(BuildContext context) {
    final onTaps = [
          () => context.read<HomeScreenProvider>().screen = 4,
          () {},
          () => context.read<HomeScreenProvider>().screen = 5,
          () => context.read<HomeScreenProvider>().screen = 6,
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstScreen()))
    ];
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
            CustomBackArrow(height: height, width: width, text: 'Profile',onTap: () => context.read<HomeScreenProvider>().index = 0),
            Positioned(
              bottom: Dimensions.getHeight(450, height),
              left: Dimensions.getWidth(14, width),
              child: Container(
                width: Dimensions.getWidth(400, width),
                height: Dimensions.getHeight(150, height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color(0xFFF6F6F6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Edit and View your personal\n        information here!',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: Dimensions.getHeight(0, height),
              left: Dimensions.getWidth(0, width),
              child: Container(
                width: width,
                height: Dimensions.getHeight(480, height),
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                ),
                child: ListView(
                  children: List.generate(
                    icons.length,
                        (index) => ProfileSettingCard(width: width,
                        height: height,
                        icon: icons[index],
                        setting: settings[index], onTap: onTaps[index]),
                  ),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(135 - 44, height),
              left: Dimensions.getWidth(32, width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Dimensions.getWidth(60, width),
                    height: Dimensions.getHeight(60, height),
                    child: Image.asset("assets/images/profile_photo.png",),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HELLO", style: TextStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                      ),),
                      Text("Muhammad Haris", style: TextStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: Dimensions.getHeight(100, height),
              right: Dimensions.getWidth(32, width),
              child: GestureDetector(
                onTap: () => context.read<HomeScreenProvider>().screen = 4,
                child: SizedBox(
                  width: Dimensions.getWidth(40, width),
                  height: Dimensions.getHeight(40, height),
                  child: Image.asset('assets/images/edit.png'),
                ),
              ),
            )
          ],
        ));
  }
}
