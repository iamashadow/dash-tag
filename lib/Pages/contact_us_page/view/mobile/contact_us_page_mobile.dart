import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../footer/footer.dart';
import '../../../mission_vission_page/component/desktop/product_page_header_image.dart';
import '../../component/mobile/contact_information_mobile.dart';
import '../../component/mobile/message_submit_form_mobile.dart';

class ContactUsPageMobile extends StatelessWidget {
  const ContactUsPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Contact Us",
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 950,
                  width: double.maxFinite,
                  child: ContactInformationMobile(),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 600,
                    width: double.maxFinite,
                    child: MessageSubmitFormMobile()),
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
