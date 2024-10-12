import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_details/sura_details_arg.dart';
import 'package:islami_app/ui/screen/sura_details/sura_details.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_constants.dart';
import 'package:islami_app/ui/utils/app_style.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(AppAssets.quranImage),
          ),
          const SizedBox(
            height: 20.0,
          ),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildDivider() => const Column(
        children: [
          Divider(
            thickness: 2,
            height: 2,
            color: AppColors.primary,
          ),
        ],
      );

  Widget buildTitle() => const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Name',
                style: AppStyle.smiBoldStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Verses',
                style: AppStyle.smiBoldStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  Widget buildContent() => Expanded(
    flex: 7,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            buildDivider(),
            buildTitle(),
            buildDivider(),
            buildSuras()
          ],
        ),
        const VerticalDivider(
          color: AppColors.primary,
          thickness: 2,
        ),
      ],
    ),
  );

  Widget buildSuras()
  {
    return Expanded(
        child: ListView.builder(
          itemBuilder:(context, index) =>  InkWell(
            onTap: () {
              Navigator.pushNamed(context, SuraDetails.routeName,arguments: SuraDetailsArg(
                  suraName: AppConstants.suraNames[index],
                  fileName: "${index+1}.txt"),
              );
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    AppConstants.suraNames[index],
                    style: AppStyle.regularAccent,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    AppConstants.versesNumber[index].toString(),
                    style: AppStyle.regularAccent,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          itemCount: AppConstants.suraNames.length,
        )

    );
  }
}
