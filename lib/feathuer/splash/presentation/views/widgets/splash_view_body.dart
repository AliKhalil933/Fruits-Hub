import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshub/constants.dart';
import 'package:fruitshub/core/services/Shared_preferances_singleton.dart';
import 'package:fruitshub/core/utils/app_images.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/login_View.dart';
import 'package:fruitshub/feathuer/onBording/presentation/views/onbording.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavication();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(Assets.assetsAssetsImagesPlant),
              ),
            ],
          ),
          SvgPicture.asset(Assets.assetsAssetsImagesLogo),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Image.asset(
              'lib/assets/images/splashButtom.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  void excuteNavication() {
    bool isonBoardingViewSeen = Prefs.getbool(KIsOnBordingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isonBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBordingView.routeName);
      }
    });
  }
}
