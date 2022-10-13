import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_back_arrow_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatefulWidget {

  const AboutUs({Key? key,}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
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
            CustomBackArrow(height: height, width: width, text: 'About Us', onTap: () {
              context.read<HomeScreenProvider>().index = 0;
            },),
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
                padding: const EdgeInsets.only(left: 30, bottom: 20, right: 25),
                width: Dimensions.getWidth(400, width),
                height: Dimensions.getHeight(700, height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: AppColors.tertiaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(selected == 1? 'About EKKO': 'EKKO Team', style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: Dimensions.getHeight(25, height),),
                    Text(selected == 1? 'EKKO  is a portable device that uses vibrational waves to treat neurological disorders based on Neurotransmission Cognitive Theory':'''Anything we want to put here Anything we want to put  Anything we want to we want to put end end.''',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                     SizedBox(height: Dimensions.getHeight(60, height),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: selected != 1 ? () => setState(() {
                            selected = 1;
                          }): () {} ,
                          child: Container(
                            width: Dimensions.getWidth(20, width),
                            height: Dimensions.getHeight(20, height),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected == 1 ? AppColors.primaryColor: const Color(0xffC4C4C4),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: selected != 2 ? () => setState(() {
                            selected = 2;
                          }): () {} ,
                          child: Container(
                            width: Dimensions.getWidth(20, width),
                            height: Dimensions.getHeight(20, height),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected == 2 ? AppColors.primaryColor: const Color(0xffC4C4C4),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: selected != 3 ? () => setState(() {
                            selected = 3;
                          }): () {} ,
                          child: Container(
                            width: Dimensions.getWidth(20, width),
                            height: Dimensions.getHeight(20, height),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected == 3 ? AppColors.primaryColor: const Color(0xffC4C4C4),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: selected == 1 ? 103: 200-44,
              left: selected == 1 ? -23: 20,
              child: SizedBox(
                  width: Dimensions.getWidth(selected == 1? 475: 387, width),
                  height: Dimensions.getHeight(selected == 1? 342: 261, height),
                  child: Image.asset(selected == 1? 'assets/images/about_us1.png': 'assets/images/about_us2.png')),
            )
          ],
        )
    );
  }
}

