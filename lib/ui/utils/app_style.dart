import 'package:flutter/cupertino.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

abstract class AppStyle
{
  static const appBarTexStyle=TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: AppColors.accent);

  static const smiBoldStyle=TextStyle(fontSize: 25.0,fontWeight: FontWeight.w600,color: AppColors.accent);

  static const regularAccent=TextStyle(fontSize: 25.0,fontWeight: FontWeight.w400,color: AppColors.accent);

}