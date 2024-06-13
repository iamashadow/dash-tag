import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/home_page.dart';
import '../../../mission_vission_page/product_page_header_image.dart';
import '../../component/desktop/contact_information.dart';
import '../../component/desktop/message_submit_form.dart';
import '../../component/mobile/contact_information_mobile.dart';
import '../../component/mobile/message_submit_form_mobile.dart';

class ContactUsPageMobile extends StatefulWidget {
  const ContactUsPageMobile({super.key});

  @override
  State<ContactUsPageMobile> createState() => _ContactUsPageMobileState();
}

class _ContactUsPageMobileState extends State<ContactUsPageMobile> {
  @override
  Widget build(BuildContext context) {


    // final MainController controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,


      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Contact Us",
            fontSize: 70,

          ),
          const SizedBox(height: 50),

          Padding(
            padding:  const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 950,
                    width: double.maxFinite,
                    child: ContactInformationMobile(),
                ),
                const SizedBox(height: 50,),
                SizedBox(
                    height: 600,
                    width: double.maxFinite,
                    child: MessageSubmitFormMobile()
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
