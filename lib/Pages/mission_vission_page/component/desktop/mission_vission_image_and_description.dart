import 'package:dash_and_tag_web_site/Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Images/all_images.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';

class MissionVissionImageAndDescription extends StatelessWidget {

  double? imageHeight;
  double? imageWidth;
  double? titleFontSize;
  double? descriptionFontSize;
  double? descriptionContainerWidth;


  MissionVissionImageAndDescription({super.key,

    this.imageWidth,
    this.imageHeight,
    this.descriptionFontSize,
    this.descriptionContainerWidth,
    this.titleFontSize

  });


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(left: 15.sw, right: 15.sw, top: 10.sh, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Mission Vission Image
              Container(
                // width: 60.sw,
                // height: 40.sw,

                height: imageHeight,
                width: imageWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AllImages.missionVissionImage),
                    )),
              ),
              SizedBox(
                width: 3.sw,
              ),

              //Mission Vission Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Mission Title
                    CustomText(
                      title: MissionVissionText.missionTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      // fontSize: 5.sw,
                      fontSize: titleFontSize,
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),

                    //Mission Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      // width: 100.sw,
                      width: descriptionContainerWidth,
                      child: Center(
                        child: CustomText(
                          title: MissionVissionText.missionTitleDescription,
                          fontWeight: FontWeight.bold,
                          fontFamily: HomePageText.fontFamilyNameRajdhani,
                          fontColor: ColorManager.blackColor,
                          // fontSize: 2.5.sw,
                          fontSize: descriptionFontSize,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),

                    //Vission Title
                    CustomText(
                      title: MissionVissionText.vissionTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      fontSize: titleFontSize,
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),

                    //Vission Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      width: descriptionContainerWidth,
                      child: Center(
                        child: CustomText(
                          title: MissionVissionText.vissionTitleDescription,
                          fontWeight: FontWeight.bold,
                          fontFamily: HomePageText.fontFamilyNameRajdhani,
                          fontColor: ColorManager.blackColor,
                          fontSize: descriptionFontSize,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),

                    //Value Title
                    CustomText(
                      title: MissionVissionText.valueTitle,
                      fontWeight: FontWeight.bold,
                      fontFamily: HomePageText.fontFamilyNameRajdhani,
                      fontColor: ColorManager.blueColor,
                      fontSize: titleFontSize,
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),

                    //Value Description
                    Container(
                      color: ColorManager.whiteColor,
                      padding: const EdgeInsets.all(20),
                      width: descriptionContainerWidth,
                      child: Center(
                        child: CustomText(
                          title: MissionVissionText.valueTitleDescription,
                          fontWeight: FontWeight.bold,
                          fontFamily: HomePageText.fontFamilyNameRajdhani,
                          fontColor: ColorManager.blackColor,
                          fontSize: descriptionFontSize,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
