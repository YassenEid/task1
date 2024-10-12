import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_style.dart';

AppBar buildAppBar([String title ="Islami"])
{
  return AppBar(
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: AppColors.transparent,
    title: Text(
      title,
      style: AppStyle.appBarTexStyle
    ),
  );
}