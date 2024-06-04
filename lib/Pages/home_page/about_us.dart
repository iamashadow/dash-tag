import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/dash_and_tag_resources.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/mission_vission_page.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 30, right: 50),
      color: const Color(0xFFF4F0EC).withOpacity(0.5),
      child: Column(
        children: [
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 20,
            fontFamily: "Rajdhani",
          ),
          Row(
            children: [
              //CRV Resources Page
              InkWell(
                onTap: () {
                  Get.to(() => const DashAndTagResources());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Dash & Tag Resources",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Mission Vission Page
              InkWell(
                onTap: () {
                  Get.to(() => const MissionVissionPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Mission & Vission",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.deepOrangeAccent,
            fontSize: 50,
            fontFamily: "Caveat",
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        title: HomePageText.aboutUsArtAndFashion,
                        fontSize: 50,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Rajdhani",
                      ),
                      Image.asset(
                        "assets/images/means_jeans/Picture1.png",
                        width: 300,
                        height: 300,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 40.w,),

                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomText(
                          title: HomePageText.aboutUsDescription,
                          fontColor: Colors.black,
                          textAlign: TextAlign.start,
                          fontSize: 20,
                          fontFamily: "Rajdhani",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
