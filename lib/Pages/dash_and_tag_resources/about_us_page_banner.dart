import 'package:flutter/material.dart';

import '../../Utils/All_Images/all_images.dart';

class AboutUsPageBanner extends StatelessWidget {
  const AboutUsPageBanner({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AllImages.aboutDashAndTag),
          )
      ),
    );
  }
}
