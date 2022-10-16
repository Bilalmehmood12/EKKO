import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/home_screen.dart';

import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:ekko/widgets/custom_donut_chart_widget.dart';
import 'package:ekko/widgets/date_day_widget.dart';
import 'package:ekko/widgets/today_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<DataItem> dataset = [
    DataItem(0.5, '', AppColors.primaryColor),
    DataItem(0.25, '', const Color(0xffCB5A5B)),
    DataItem(0.17, '', const Color(0xffEC9D6B)),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Stack(
      children: [
        Positioned(
          bottom: Dimensions.getHeight(0, height),
          left: Dimensions.getWidth(14, width),
          child: Container(
            width: Dimensions.getWidth(400, width),
            height: Dimensions.getHeight(610, height),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColors.tertiaryColor,
            ),
          ),
        ),
        Positioned(
          bottom: Dimensions.getHeight(0, height),
          left: Dimensions.getWidth(0, width),
          child: Container(
            width: width,
            height: Dimensions.getHeight(530, height),
            decoration: BoxDecoration(
              color: AppColors.tertiaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.getWidth(14, width)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DateDayWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.secondaryColor,
                        date: '17',
                        day: 'MON',
                      ),
                      DateDayWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.tertiaryColor,
                        date: '18',
                        day: 'TUE',
                      ),
                      DateDayWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.tertiaryColor,
                        date: '19',
                        day: 'WED',
                      ),
                      DateDayWidget(
                          width: width,
                          height: height,
                          bColor: AppColors.tertiaryColor,
                          date: '20',
                          day: 'THU',
                          event: true),
                      DateDayWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.tertiaryColor,
                        date: '21',
                        day: 'FRI',
                      ),
                      DateDayWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.tertiaryColor,
                        date: '22',
                        day: 'SAT',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.getWidth(14, width),
                      top: Dimensions.getHeight(40, height)),
                  child: Row(
                    children: [
                      Text(
                        'Today\'s Stats',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/images/today_stats.png',
                        scale: 5,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.getWidth(14, width),
                      top: Dimensions.getHeight(15, height),
                      bottom: Dimensions.getHeight(20, height)),
                  height: Dimensions.getHeight(130, height),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TodayStatsWidget(
                        width: width,
                        height: height,
                        bColor: AppColors.primaryColor,
                        icon: 'assets/images/complete.png',
                        number: '50',
                        task: 'COMPLETED',
                      ),
                      TodayStatsWidget(
                        width: width,
                        height: height,
                        bColor: const Color(0xffCB5A5B),
                        icon: 'assets/images/incomplete.png',
                        number: '25',
                        task: 'IN-COMPLETE',
                      ),
                      TodayStatsWidget(
                        width: width,
                        height: height,
                        bColor: const Color(0xffEC9D6B),
                        icon: 'assets/images/skipped.png',
                        number: '13',
                        task: 'SKIPPED',
                      ),
                      TodayStatsWidget(
                        width: width,
                        height: height,
                        bColor: const Color(0xff1B8B7F),
                        icon: 'assets/images/result.png',
                        number: '18',
                        task: 'RESULT',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: Dimensions.getHeight(280-44, height),
          left: Dimensions.getWidth(100, width),
          child: SizedBox(
            width: Dimensions.getWidth(220, width),
            height: Dimensions.getHeight(220, height),
            child: CustomDonutChart(dataset: dataset),
          ),
        ),
        Positioned(
          top: Dimensions.getHeight(40, height),
          right: Dimensions.getWidth(25, width),
          child: GestureDetector(
            onTap: () {
              context.read<HomeScreenProvider>().index = 2;
            },
            child: Container(
              width: Dimensions.getWidth(60, width),
              height: Dimensions.getHeight(60, height),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.tertiaryColor,
              ),
              child: Center(
                child: Text(
                  'M',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: Dimensions.getHeight(50, height),
            left: Dimensions.getWidth(42, width),
            child: Text(
              'GREAT WORK!',
              style: TextStyle(
                  color: AppColors.tertiaryColor.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )),
        Positioned(
            top: Dimensions.getHeight(85, height),
            left: Dimensions.getWidth(42, width),
            child: Text(
              'Your Today\'s\nActivities',
              style: TextStyle(
                  color: AppColors.tertiaryColor.withOpacity(0.8),
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
            )),
        Positioned(
            top: Dimensions.getHeight(290-44, height),
            left: Dimensions.getWidth(45, width),
            child: Text(
              '%13',
              style: TextStyle(
                  color: dataset[2].color,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
        Positioned(
            top: Dimensions.getHeight(450-44, height),
            left: Dimensions.getWidth(42, width),
            child: Text(
              '%25',
              style: TextStyle(
                  color: dataset[1].color,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
        Positioned(
            top: Dimensions.getHeight(373-44, height),
            right: Dimensions.getWidth(42, width),
            child: Text(
              '%50',
              style: TextStyle(
                  color: dataset[0].color,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
      ],
    ));
  }
}
