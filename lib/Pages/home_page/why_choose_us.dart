import 'package:dash_and_tag_web_site/Pages/home_page/why_choose_us_card.dart';
import 'package:dash_and_tag_web_site/universal_widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            title: HomePageText.whyChooseUs,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            textAlign: TextAlign.start,
          ),
          Container(
            color: const Color(0xFFF4F0EC).withOpacity(0.5),
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       Color(0xfffef4ec),
            //       Color(0xffffffff),
            //       Color(0xfffef4ec),
            //     ],
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //   ),
            // ),
            child: HowItWorksCardItem(),
          )
        ],
      ),
    );
  }
}
