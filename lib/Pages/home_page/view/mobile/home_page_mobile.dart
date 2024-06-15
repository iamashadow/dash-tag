import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../component/desktop/about_us.dart';
import '../../component/desktop/header_section.dart';
import '../../component/desktop/our_complience_section.dart';
import '../../component/desktop/our_product_section.dart';
import '../../component/desktop/why_choose_us.dart';
import '../../component/mobile/about_us_mobile.dart';
import '../../component/mobile/header_section_mobile.dart';
import '../../component/mobile/our_product_section_mobile.dart';
import '../../component/tablet/about_us_tablet.dart';


class HomePageMobile extends StatelessWidget {
   HomePageMobile({super.key});


  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        //header appbar
        CustomAppbar(controller: controller),
        HeaderSectionMobile(),
        // const Pages(),
        const AboutUsMobile(),

        WhyChooseUsSection(
          cardNumber: 2,
          cardHeight: 120.sh,
          cardWidth: 60.sh,
          paddingonCard: 2.sw,
          titleSize: 4.sw,
          subtitleSize: 3.sw,
        ),

        const OurProductSectionMobile(),

        OurCompliencesSection(
          sectionHeight: 50.0,
          sectionPadding: 0.02,
          titleFontSize: 5.0,
          titleSpacing: 4.0,
          carouselHeight: 300.0,
          imageWidth: 300.0,
          imageHeight: 300.0,
          buttonPadding: 10.0,
          buttonIconSize: 20.0,
          viewPortFraction: 0.3,
        ),

        const Footer(),
      ]),
    );
  }
}
