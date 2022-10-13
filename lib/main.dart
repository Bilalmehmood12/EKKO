import 'package:ekko/Providers/home_screen_provider.dart';
import 'package:ekko/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenProvider>(create: (context) => HomeScreenProvider())
      ],
      child: const MaterialApp(
        title: 'EKKO',
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
