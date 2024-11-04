import 'package:flutter/material.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyle.bold13.copyWith(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: .5),
      borderRadius: BorderRadius.all(
        Radius.circular(6.0),
      ),
    );
  }
}
