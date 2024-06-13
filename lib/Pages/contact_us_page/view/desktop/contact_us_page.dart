import 'package:dash_and_tag_web_site/Pages/contact_us_page/component/desktop/contact_information.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/component/desktop/message_submit_form.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/home_page.dart';
import '../../../home_page/widgets/footer_bottom_social_buttons.dart';
import '../../../mission_vission_page/product_page_header_image.dart';

class ContactUsPageDesktop extends StatelessWidget {
  ContactUsPageDesktop({super.key});
  final MainController controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          ProductsPageHeaderImage(
            title: "Contact Us",
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Row(
              children: [
                const Expanded(child: ContactInformation()),
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: MessageSubmitForm(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
