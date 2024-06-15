import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../mission_vission_page/component/desktop/product_page_header_image.dart';
import '../../component/tablet/contact_information_tablet.dart';
import '../../component/tablet/message_submit_form_tablet.dart';

class ContactUsPageTablet extends StatelessWidget {
  ContactUsPageTablet({super.key});
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
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const Expanded(child: ContactInformationTablet()),
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: MessageSubmitFormTablet(),
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
