import 'package:flutter/material.dart';

import '../../../../Utils/All_Images/all_images.dart';

class AboutUsPageBanner extends StatelessWidget {

  double? bannerHeight;

  AboutUsPageBanner({super.key, this.bannerHeight,});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.maxFinite,
      height: bannerHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AllImages.aboutDashAndTag),
          )
      ),
    );
  }
}
