import 'package:dash_and_tag_web_site/Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import '../../Universal_Widgets/custom_text.dart';
import '../../Utils/All_Colors/all_colors.dart';
import '../../Utils/All_Images/all_images.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';

class MissionVissionImageAndDescription extends StatelessWidget {
  MissionVissionImageAndDescription({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(controller: controller),
          Padding(
            padding: EdgeInsets.all(size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Mission Vission Image
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AllImages.missionVissionImage),
                  )),
                ),
                const SizedBox(
                  width: 30,
                ),

                //Mission Vission Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Mission Title
                    CustomText(
                      title: MissionVissionText.missionTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      fontSize: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Mission Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      width: size.width * 0.4,
                      child: Center(
                        child: Expanded(
                          child: CustomText(
                            title: MissionVissionText.missionTitleDescription,
                            fontWeight: FontWeight.bold,
                            fontFamily: HomePageText.fontFamilyNameRajdhani,
                            fontColor: ColorManager.blackColor,
                            fontSize: 3,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Vission Title
                    CustomText(
                      title: MissionVissionText.vissionTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      fontSize: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Vission Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      width: size.width * 0.4,
                      child: Center(
                        child: Expanded(
                          child: CustomText(
                            title: MissionVissionText.vissionTitleDescription,
                            fontWeight: FontWeight.bold,
                            fontFamily: HomePageText.fontFamilyNameRajdhani,
                            fontColor: ColorManager.blackColor,
                            fontSize: 3,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Value Title
                    CustomText(
                      title: MissionVissionText.valueTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      fontSize: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Value Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      width: size.width * 0.4,
                      child: Center(
                        child: Expanded(
                          child: CustomText(
                            title: MissionVissionText.valueTitleDescription,
                            fontWeight: FontWeight.bold,
                            fontFamily: HomePageText.fontFamilyNameRajdhani,
                            fontColor: ColorManager.blackColor,
                            fontSize: 3,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
