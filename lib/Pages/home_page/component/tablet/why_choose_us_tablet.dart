import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../desktop/why_choose_us_card.dart';

class WhyChooseUsTablet extends StatelessWidget {
  const WhyChooseUsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 5.sh,),
        CustomText(
          title: HomePageText.whyChooseUs,
          fontWeight: FontWeight.bold,
          fontSize: 5.sw,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 5.sh,),
        HowItWorksCardItem(
          cardHeight: 50.sh,
          cardWidth: 50.sw,
          crossAxisCount: 2,

        ),
        SizedBox(height: 5.sh,)
      ],
    );
  }
}
