import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/sura_details/sura_details_arg.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_style.dart';
import 'package:islami_app/ui/widget/app_bar.dart';

class SuraDetails extends StatefulWidget {

  static const String routeName = 'sura_details';


  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent='';

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg arg=ModalRoute.of(context)!.settings.arguments as SuraDetailsArg;
    readFileContent(arg.fileName);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.mainBackGround),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(),
        body:suraContent.isEmpty ? buildLoader(): Container(
          color: AppColors.transparent,
            child: SingleChildScrollView(child: Text(suraContent,
            textAlign: TextAlign.center,
              style: AppStyle.regularAccent,
            ),
            ),
        ),
      ),
    );
  }

  Widget buildLoader() =>const Center(child: CircularProgressIndicator());

  readFileContent(String fileName)async
  {
   suraContent=await rootBundle.loadString("assets/files/$fileName");
   setState(() {});
  }
}
