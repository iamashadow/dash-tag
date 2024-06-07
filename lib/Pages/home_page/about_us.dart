import 'package:dash_and_tag_web_site/Pages/mens_sector/polo_shirts/polo_shirts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Universal_Widgets/custom_text.dart';
import '../mission_vission_page/mission_vission_page.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../dash_and_tag_resources/dash_and_tag_resources.dart';
import '../mens_sector/hoodies_page/hoodies_page.dart';
import '../mens_sector/jackets_page/jackets_page.dart';
import '../mens_sector/men_jeans/mens_jeans.dart';
import '../mens_sector/shorts_and_cargo_page/shorts_and_cargo_page.dart';
import '../mens_sector/sweaters_page/sweaters_page.dart';
import '../mens_sector/tshirt_page/tshirt_page.dart';

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
