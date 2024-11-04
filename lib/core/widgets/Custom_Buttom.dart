import 'package:flutter/material.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onPtrssed, required this.text});
  final VoidCallback onPtrssed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPtrssed,
        child: Text(
          text,
          style: AppTextStyle.bold16.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
