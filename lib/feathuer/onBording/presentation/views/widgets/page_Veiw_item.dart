import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshub/constants.dart';
import 'package:fruitshub/core/services/Shared_preferances_singleton.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/login_View.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backGroundImage,
    required this.subTitle,
    required this.title,
    required this.IsVisible,
  });

  final String image, backGroundImage;
  final Text subTitle;
  final Widget title;
  final bool IsVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned.fill(
                top: 220,
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              Visibility(
                visible: IsVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setbool(KIsOnBordingViewSeen, true);
                      Navigator.of(context)
                          .pushReplacementNamed(LoginView.routeName);
                    },
                    child: Text(
                      'تخط',
                      style: AppTextStyle.regular13
                          .copyWith(color: AppColors.tharedColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            textAlign: TextAlign.center,
            subTitle.data!.toString(),
            style: AppTextStyle.semiBold13
                .copyWith(color: const Color(0xff4E5556)),
          ),
        )
      ],
    );
  }
}
