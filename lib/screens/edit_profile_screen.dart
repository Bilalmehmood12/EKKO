import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:ekko/widgets/edit_profile_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final labels = const [
    'Username',
    'Email ID',
    'Address',
    'Phone',
    'Gender',
    'Date of Birth'
  ];
  final texts = const [
    'Muhammad Haris',
    'mharis123@gmail.com',
    'House#206, Street#31, I-10/2, ISB',
    '0336-1234567',
    'Male',
    '18-10-1997'
  ];
  final controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
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
            text: 'Edit Profile',
            onTap: () {
              context.read<HomeScreenProvider>().screen = 3;
            },
          ),
          Positioned(
            top: Dimensions.getHeight(82 - 44, height),
            left: Dimensions.getWidth(340, width),
            child: Text(
              'Save',
              style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: Dimensions.getHeight(355 - 44, height),
            left: Dimensions.getWidth(0, width),
            child: Container(
              width: width,
              height: Dimensions.getHeight(510, height),
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
              ),
            ),
          ),
          Positioned(
            top: Dimensions.getHeight(280 - 44, height),
            left: Dimensions.getWidth(14, width),
            child: Container(
              width: Dimensions.getWidth(400, width),
              height: Dimensions.getHeight(570, height),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: AppColors.tertiaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: List.generate(
                      labels.length,
                      (index) => EditProfileTextField(height: height,label: labels[index], text: texts[index])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
