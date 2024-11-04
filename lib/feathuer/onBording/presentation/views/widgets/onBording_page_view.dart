import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruitshub/core/utils/app_colors.dart';
import 'package:fruitshub/core/utils/app_images.dart';
import 'package:fruitshub/core/utils/app_text_stayel.dart';
import 'package:fruitshub/feathuer/onBording/presentation/views/widgets/page_Veiw_item.dart';

class OnbordingPageView extends StatelessWidget {
  const OnbordingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            IsVisible: true,
            image: Assets.assetsAssetsImagesPageItem1Iimage,
            backGroundImage: Assets.assetsAssetsImagesPageItem1BackGround,
            subTitle: const Text(
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'مرحبًا بك في ',
                  style: AppTextStyle.bold23,
                ),
                Text(
                  'HUB',
                  style: AppTextStyle.bold23.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Text(
                  'Fruit',
                  style: AppTextStyle.bold23
                      .copyWith(color: AppColors.primaryColor),
                )
              ],
            )),
        const PageViewItem(
          IsVisible: false,
          image: Assets.assetsAssetsImagesPageItem2Image,
          backGroundImage: Assets.assetsAssetsImagesPageItem2Background,
          subTitle: Text(
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          ),
          title: Text(
            'ابحث وتسوق',
            style: AppTextStyle.bold23,
          ),
        )
      ],
    );
  }
}
