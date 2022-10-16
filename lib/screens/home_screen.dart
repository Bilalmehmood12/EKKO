import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/about_us.dart';
import 'package:ekko/screens/change_password_screen.dart';
import 'package:ekko/screens/contact_us_screen.dart';
import 'package:ekko/screens/dashboard_screen.dart';
import 'package:ekko/screens/edit_profile_screen.dart';
import 'package:ekko/screens/profile_screen.dart';
import 'package:ekko/screens/therapy_screen.dart';
import 'package:ekko/utils/color.dart';
import 'package:ekko/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = const [
    Dashboard(),
    Therapy(),
    Profile(),
    AboutUs(),
    EditProfile(),
    ChangePassword(),
    ContactUs(),
  ];

  @override
  void initState() {
    context.read<HomeScreenProvider>().index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Consumer<HomeScreenProvider>(
          builder: (_, provider, __) => screens[provider.screen]),
      bottomNavigationBar: Consumer<HomeScreenProvider>(
        builder: (_, provider, __) => CustomBottomNavBar(
            width: width,
            height: height,
            currentIndex: provider.index,
            icons: const [
              'assets/images/home.png',
              'assets/images/therapy.png',
              'assets/images/profile.png',
              'assets/images/about_us.png',
            ],
            onTaps: [
              () => provider.index = 0,
              () => provider.index = 1,
              () => provider.index = 2,
              () => provider.index = 3
            ]),
      ),
    );
  }
}
