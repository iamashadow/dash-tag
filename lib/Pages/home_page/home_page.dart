import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/Pages/home_page/pages.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about_us.dart';
import 'header_section.dart';
import 'our_complience_section.dart';
import 'our_product_section.dart';
import 'why_choose_us.dart';
import 'widgets/footer_bottom_social_buttons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Image.asset(
          AllImages.webSiteLogoTransparent,
          width: 50,
          height: 50,
        ),
        title: const Text('Dash&Tag'),
        actions: [
          ...List.generate(controller.appbarActions.length, (index) {
            final action = controller.appbarActions[index];
            return MouseRegion(
              onHover: (event) => DropdownButtonHideUnderline(
                child: DropdownButton2(
                  items: action.categories!
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.title),
                          ))
                      .toList(),
                  onChanged: (value) {
                    printInfo(info: value.toString());
                  },
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      action.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(width: 10),
                    if (action.categories != null)
                      const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            );
          }),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(children: [
        // WebViewWidget(
        //                     controller: controller.webViewController),
        HeaderSection(),
        Pages(),
        const AboutUsPage(),
        const WhyChooseUsSection(),
        const OurProductsSection(),
        const OurCompliencesSection(),
        const Footer(),
      ]),
    );
  }
}
