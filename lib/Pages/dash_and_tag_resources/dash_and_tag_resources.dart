import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

import '../home_page/home_page.dart';
import 'about_us_page_banner.dart';
import 'about_us_page_logo_and_description.dart';
import 'package:flutter/material.dart';
import '../footer/footer.dart';
import 'package:get/get.dart';
import '../home_page/our_complience_section.dart';

class DashAndTagResources extends StatelessWidget {
  DashAndTagResources({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          const AboutUsPageBanner(),
          const AboutUsPageLogoAndDescription(),
          const OurCompliencesSection(),
          const Footer(),
        ],
      ),
    );
  }
}
