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
import '../home_page/widgets/footer_bottom_social_buttons.dart';

class DashAndTagResources extends StatelessWidget {
  DashAndTagResources({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Image.asset(
          AllImages.webSiteLogoTransparent,
          width: 50,
          height: 50,
        ),
        title: const Text('Dash&Tag'),
        actions: [
          SizedBox(
            width: Get.width * 0.5,
            child: PlutoMenuBar(
              mode: PlutoMenuBarMode.hover,
              menus: controller.convertAppBarActionsToPlutoMenuItems(
                  controller.appbarActions),
            ),
          ),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(
        children: const [
          AboutUsPageBanner(),
          AboutUsPageLogoAndDescription(),
          OurCompliencesSection(),
          Footer(),
        ],
      ),
    );
  }
}
