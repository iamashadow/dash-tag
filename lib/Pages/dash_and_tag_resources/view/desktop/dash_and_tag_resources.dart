import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/current_screen_size.dart';
import '../../../home_page/home_page.dart';
import '../../component/desktop/about_us_page_banner.dart';
import '../../component/desktop/about_us_page_logo_and_description.dart';
import 'package:flutter/material.dart';
import '../../../footer/footer.dart';
import 'package:get/get.dart';
import '../../../home_page/our_complience_section.dart';

class DashAndTagResourcesDesktop extends StatelessWidget {
  DashAndTagResourcesDesktop({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),

          AboutUsPageBanner(bannerHeight: 20.sh,),


           AboutUsPageLogoAndDescription(
             aboutUsFontSize: 10.sw,
             descriptionCommitFontSize: 3.sw,
             descriptionContainerWidth: 50.sh,
             descriptionFontSize: 2.sw,
             logoHeight: 25.sh,
             logoWidth: 45.sw,
           ),
          SizedBox(height: 5.sh,),

          OurCompliencesSection(),

          const Footer(),
        ],
      ),
    );
  }
}
