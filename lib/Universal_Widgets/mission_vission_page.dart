import '../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';
import '../../Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Pages/footer/footer.dart';
import '../Pages/home_page/home_page.dart';
import '../Pages/home_page/our_complience_section.dart';
import '../Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import '../Pages/mission_vission_page/product_page_header_image.dart';
import '../Pages/mission_vission_page/mission_vission_image_and_description.dart';

class MissionVissionPage extends StatelessWidget {
  const MissionVissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Get.to(HomePage());
          },
          child: const Text('Dash&Tag'),
        ),
        actions: [
          // ...List.generate(controller.appbarActions.length, (index) {
          //   final action = controller.appbarActions[index];
          //   return DropdownButtonHideUnderline(child: DropdownButton2());
          // }),
          FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(
        children: [
          //Mission Vission Header Image
          ProductsPageHeaderImage(
            title: MissionVissionText.missionVissionTitle,
          ),
          const SizedBox(
            width: 40,
          ),

          //Mission Vission Image & Mission Vission Description
          MissionVissionImageAndDescription(),
          const SizedBox(
            width: 40,
          ),

          //Our Complients
          const OurCompliencesSection(),
          const SizedBox(
            width: 40,
          ),

          //Footer Area
          const Footer(),
        ],
      ),
    );
  }
}
