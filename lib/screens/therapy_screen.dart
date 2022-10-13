import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:ekko/widgets/text_icon_button_widget.dart';
import 'package:ekko/widgets/therapy_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Therapy extends StatefulWidget {
  const Therapy({Key? key}) : super(key: key);

  @override
  State<Therapy> createState() => _TherapyState();
}

class _TherapyState extends State<Therapy> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> therapies = [
      'assets/images/therapy1.png',
      'assets/images/therapy2.png',
      'assets/images/therapy3.png',
      'assets/images/therapy4.png',
    ];
    List<String> therapyNames = [
      'Face Point 1',
      'Face Point 2',
      'Tongue Point 1',
      'Tongue Point 2',
    ];
    return SafeArea(
        child: Stack(
      children: [
        CustomBackArrow(
          height: height,
          width: width,
          text: 'Session',
          onTap: () {
            context.read<HomeScreenProvider>().index = 0;
          },
        ),
        Positioned(
          bottom: Dimensions.getHeight(0, height),
          left: Dimensions.getWidth(0, width),
          child: Container(
            width: width,
            height: Dimensions.getHeight(620, height),
            decoration: BoxDecoration(
              color: AppColors.tertiaryColor,
            ),
          ),
        ),
        Positioned(
          bottom: Dimensions.getHeight(0, height),
          left: Dimensions.getWidth(14, width),
          child: Container(
            width: Dimensions.getWidth(400, width),
            height: Dimensions.getHeight(700, height),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColors.tertiaryColor,
            ),
            child: ListView(
              padding: const EdgeInsets.only(top: 20),
              children: List.generate(
                4,
                (index) => TherapyCard(
                  height: height,
                  width: width,
                  therapy: therapies[index],
                  therapyName: therapyNames[index],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.getHeight(730, height),
          right: Dimensions.getWidth(20, width),
          child: TextIconButton(width: width, height: height, text: 'Begin Therapy', icon: Icons.play_arrow_rounded, color: AppColors.tertiaryColor, background: AppColors.primaryColor,)
        ),
      ],
    ));
  }
}
