import 'package:flutter/material.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';
import 'package:fruitshub/core/widgets/Custom_chekbox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomChekbox(
          isChecked: isTermsAccepted,
          onChanged: (bool value) {
            setState(() {
              isTermsAccepted = value;
            });
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: 'من خلال إنشاء حساب  ،  فإنك توافق على ',
                style: AppTextStyle.semiBold13.copyWith(color: Colors.grey)),
            TextSpan(
                text: '  الشروط       والأحكام الخاصة بنا ',
                style: AppTextStyle.semiBold13
                    .copyWith(color: AppColors.lightprimaryColor)),
          ])),
        ),
      ],
    );
  }
}
