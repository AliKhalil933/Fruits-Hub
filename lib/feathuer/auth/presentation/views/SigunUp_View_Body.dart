import 'package:flutter/material.dart';
import 'package:fruitshub/constants.dart';
import 'package:fruitshub/core/widgets/Custom_Buttom.dart';
import 'package:fruitshub/core/widgets/Custom_Text_Feild.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/Have_An_Account.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/terms_and_conditions.dart';

class SigunUpViewBody extends StatelessWidget {
  const SigunUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomButtom(onPtrssed: () {}, text: 'إنشاء حساب جديد'),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
