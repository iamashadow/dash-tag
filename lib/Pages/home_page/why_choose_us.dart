import 'package:dash_and_tag_web_site/Pages/home_page/why_choose_us_card.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 55.w, top: 50.h, bottom: 50.h),
            color: const Color(0xFFF1F1F1),
            child: CustomText(
              title: HomePageText.whyChooseUs,
              fontWeight: FontWeight.bold,
              fontSize: 5.sp,
              textAlign: TextAlign.start,
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 50.h),
            color: const Color(0xFFF1F1F1),
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
