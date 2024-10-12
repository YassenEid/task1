import 'package:flutter/material.dart';
import 'package:islami_app/ui/screen/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/ui/screen/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/ui/screen/home/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/screen/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/widget/app_bar.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;
  List<Widget>tabs=const [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.mainBackGround,
            ),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(),
        bottomNavigationBar: buildBuildBottomNavBar(),
        body:tabs[currentIndex]
      ),
    );
  }

  Widget buildBuildBottomNavBar() {
    return Theme(
      data: ThemeData(
        canvasColor: AppColors.primary
      ),
      child: BottomNavigationBar(
        onTap: (index) {
          currentIndex=index;
          setState(() {

          });
        },
        currentIndex: currentIndex,
        selectedItemColor: AppColors.accent,
        items:  const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  AppAssets.iconQuran
                )
              ),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage(
                      AppAssets.iconHadeth
                  )
              ),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage(
                      AppAssets.iconSebha
                  )
              ),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage(
                      AppAssets.iconRadio
                  )
              ),
              label: ''
          ),
        ],
      ),
    );
  }


}
