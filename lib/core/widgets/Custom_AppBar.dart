import 'package:flutter/material.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';

// ignore: non_constant_identifier_names
AppBar BuildAppBar(context, {required String Title}) {
  return AppBar(
    backgroundColor: AppColors.white,
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      Title,
      style: AppTextStyle.bold19,
    ),
  );
}
