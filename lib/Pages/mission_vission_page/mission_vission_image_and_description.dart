import 'package:flutter/material.dart';
import '../../Universal_Widgets/custom_text.dart';
import '../../Utils/All_Colors/all_colors.dart';
import '../../Utils/All_Images/all_images.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';

class MissionVissionImageAndDescription extends StatelessWidget {
  const MissionVissionImageAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
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
                fontSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),

              //Mission Description
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                  width: size.width * 0.4,
                  child: Center(
                    child: Expanded(
                      child: CustomText(
                        title: MissionVissionText.missionTitleDescription,
                        fontWeight: FontWeight.bold,
                        fontFamily: HomePageText.fontFamilyNameRajdhani,
                        fontColor: ColorManager.blackColor,
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Vission Title
              CustomText(
                title: MissionVissionText.vissionTitle,
                fontWeight: FontWeight.bold,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
                fontColor: ColorManager.blueColor,
                fontSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),

              //Vission Description
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                  width: size.width * 0.4,
                  child: Center(
                    child: Expanded(
                      child: CustomText(
                        title: MissionVissionText.vissionTitleDescription,
                        fontWeight: FontWeight.bold,
                        fontFamily: HomePageText.fontFamilyNameRajdhani,
                        fontColor: ColorManager.blackColor,
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Value Title
              CustomText(
                title: MissionVissionText.valueTitle,
                fontWeight: FontWeight.bold,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
                fontColor: ColorManager.blueColor,
                fontSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),

              //Value Description
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                  width: size.width * 0.4,
                  child: Center(
                    child: Expanded(
                      child: CustomText(
                        title: MissionVissionText.valueTitleDescription,
                        fontWeight: FontWeight.bold,
                        fontFamily: HomePageText.fontFamilyNameRajdhani,
                        fontColor: ColorManager.blackColor,
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
