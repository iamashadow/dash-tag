import 'package:dash_and_tag_web_site/Pages/mission_vission_page/mission_vission_header_image.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/mission_vission_image_and_description.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../footer/footer.dart';
import '../home_page/our_complience_section.dart';
import '../home_page/widgets/footer_bottom_social_buttons.dart';

class MissionVissionPage extends StatelessWidget {
  const MissionVissionPage({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      appBar: AppBar(
        title: const Text('Dash&Tag'),
        actions: [
          // ...List.generate(controller.appbarActions.length, (index) {
          //   final action = controller.appbarActions[index];
          //   return DropdownButtonHideUnderline(child: DropdownButton2());
          // }),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(
        children: [
          //Mission Vission Header Image
          MissionVissionHeaderImage(),
          SizedBox(width: 40,),

          //Mission Vission Image & Mission Vission Description
          MissionVissionImageAndDescription(),
          SizedBox(width: 40,),

          //Our Complients
          OurCompliencesSection(),
          SizedBox(width: 40,),

          //Footer Area
          Footer(),
        ],
      ),

    );
  }
}
