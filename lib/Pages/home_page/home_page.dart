import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/Pages/home_page/pages.dart';
import 'package:dash_and_tag_web_site/Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'about_us.dart';
import 'header_section.dart';
import 'our_complience_section.dart';
import 'our_product_section.dart';
import 'why_choose_us.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.white,
      //   surfaceTintColor: Colors.white,
      //   leading: Image.asset(
      //     AllImages.webSiteLogoTransparent,
      //     width: 50,
      //     height: 50,
      //   ),
      //   title: const Text('Dash&Tag'),
      //   actions: [
      //     SizedBox(
      //       width: Get.width * 0.5,
      //       child: PlutoMenuBar(
      //         mode: PlutoMenuBarMode.hover,
      //         menus: controller.convertAppBarActionsToPlutoMenuItems(
      //             controller.appbarActions),
      //         itemStyle: const PlutoMenuItemStyle(
      //           textStyle: TextStyle(
      //             color: Colors.black,
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         borderColor: Colors.transparent,
      //       ),
      //     ),
      //     const FooterBottomSocialButtons(),
      //   ],
      // ),
      body: ListView(children: [
        //header appbar
        CustomAppbar(controller: controller),
        HeaderSection(),
        const Pages(),
        const AboutUsPage(),
        const WhyChooseUsSection(),
        const OurProductsSection(),
        const OurCompliencesSection(),
        const Footer(),
      ]),
    );
  }
}
