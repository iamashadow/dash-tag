import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../component/desktop/about_us.dart';
import '../../component/desktop/header_section.dart';
import '../../component/desktop/our_complience_section.dart';
import '../../component/desktop/our_product_section.dart';
import '../../component/desktop/why_choose_us.dart';

class HomePageDesktop extends StatelessWidget {
  HomePageDesktop({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        //header appbar
        CustomAppbar(controller: controller),
        HeaderSection(),
        // const Pages(),
        const AboutUsPage(),

        WhyChooseUsSection(
          cardNumber: 3,
          cardHeight: 70.sh,
          cardWidth: 60.sh,
          paddingonCard: 10.sw,
          titleSize: 45,
          subtitleSize: 15,
        ),

        const OurProductsSection(),

        getValueForScreenType<bool>(
            context: context,
            mobile: true,
          tablet: true,
          desktop: true,
        )
        ? OurCompliencesSection(
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
        ) : OurCompliencesSection(
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
