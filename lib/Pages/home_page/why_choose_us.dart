import 'package:dash_and_tag_web_site/Pages/home_page/why_choose_us_card.dart';
import 'package:dash_and_tag_web_site/universal_widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title: HomePageText.whyChooseUs,
          fontWeight: FontWeight.bold,
          fontSize: 2,
          textAlign: TextAlign.start,
        ),
        const HowItWorksCardItem()
      ],
    );
  }
}
