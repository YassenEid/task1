import 'package:flutter/material.dart';
import 'package:islami_app/ui/screen/home/home.dart';
import 'package:islami_app/ui/utils/app_assets.dart';

class SplashScreen extends StatelessWidget {

  static const String routeName='splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4,),()
    {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.splash,
            ),
            fit: BoxFit.cover
          )
        ),
        width: double.infinity,
      ),
    );
  }
}


//todo//حل اخر لل الصوره تاخد المساحه كلها
//
// SizedBox.expand( // This ensures the image takes all available space
// child: Image.asset(
// AppAssets.splash,
// fit: BoxFit.cover, // Ensures the image covers the entire screen
// ),
// ),