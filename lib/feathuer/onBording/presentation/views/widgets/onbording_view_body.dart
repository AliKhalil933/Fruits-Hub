import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruitshub/constants.dart';
import 'package:fruitshub/core/services/Shared_preferances_singleton.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/widgets/Custom_Buttom.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/login_View.dart';
import 'package:fruitshub/feathuer/onBording/presentation/views/widgets/onBording_page_view.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SafeArea(
          child: OnbordingPageView(
            pageController: pageController,
          ),
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              color: currentPage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5),
              activeColor: AppColors.primaryColor,
              size: const Size(10, 10),
              activeSize: const Size(20, 10)),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
            child: CustomButtom(
                onPtrssed: () {
                  Prefs.setbool(KIsOnBordingViewSeen, true);
                  Navigator.pushNamed(context, LoginView.routeName);
                },
                text: 'ابدأ الان'),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
