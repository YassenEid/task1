import 'package:flutter/material.dart';
import 'package:islami_app/ui/screen/home/home.dart';
import 'package:islami_app/ui/screen/splash/splash.dart';
import 'package:islami_app/ui/screen/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:
      {
        SplashScreen.routeName:(_)=>const SplashScreen(),
        Home.routeName:(_)=>const Home(),
        SuraDetails.routeName:(_)=>const SuraDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}