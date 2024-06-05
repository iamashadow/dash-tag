import '../home_page/home_page.dart';
import 'about_us_page_banner.dart';
import 'about_us_page_logo_and_description.dart';
import 'package:flutter/material.dart';
import '../footer/footer.dart';
import 'package:get/get.dart';
import '../home_page/our_complience_section.dart';
import '../home_page/widgets/footer_bottom_social_buttons.dart';

class DashAndTagResources extends StatelessWidget {
  const DashAndTagResources({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: (){
            Get.to(HomePage());
          },
          child: const Text('Dash&Tag'),
        ),
        actions: [
          // ...List.generate(controller.appbarActions.length, (index) {
          //   final action = controller.appbarActions[index];
          //   return DropdownButtonHideUnderline(child: DropdownButton2());
          // }),
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
