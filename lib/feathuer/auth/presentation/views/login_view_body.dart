import 'package:flutter/material.dart';
import 'package:fruitshub/constants.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_images.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';
import 'package:fruitshub/core/widgets/Custom_Buttom.dart';
import 'package:fruitshub/core/widgets/Custom_Text_Feild.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/Dont_Have_AN_Account_widget.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/Social_Buttom.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/or_Divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                  hintText: ' كلمة المرور',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyle.semiBold13
                      .copyWith(color: AppColors.lightprimaryColor),
                ),
              ]),
              const SizedBox(
                height: 33,
              ),
              CustomButtom(onPtrssed: () {}, text: 'تسجيل الدخول'),
              const SizedBox(
                height: 40,
              ),
              const DontHaveAnAccountWidget(),
              const SizedBox(
                height: 16,
              ),
              const OrDivider(),
              const SizedBox(
                height: 20,
              ),
              SocialButton(
                title: 'تسجيل بواسطة جوجل',
                image: Assets.assetsAssetsImagesGogleIcons,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              SocialButton(
                title: 'تسجيل بواسطة أبل',
                image: Assets.assetsAssetsImagesAppleIcons,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              SocialButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.assetsAssetsImagesFacebookIcons,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
