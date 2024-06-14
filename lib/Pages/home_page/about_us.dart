import 'package:dash_and_tag_web_site/Pages/mens_sector/polo_shirts/polo_shirts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Universal_Widgets/custom_text.dart';
import '../mission_vission_page/view/desktop/mission_vission_desktop_page.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../dash_and_tag_resources/view/desktop/dash_and_tag_resources.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBOx
          const SizedBox(
            height: 50,
          ),

          //Dash And Tag Resources
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 20,
            fontFamily: "Rajdhani",
          ),

          //About Us Text
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.deepOrangeAccent,
            fontSize: 50,
            fontFamily: "Caveat",
          ),

          //Art FAshion Text, Image & Description
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Art & Fashion Text
                    CustomText(
                      title: HomePageText.aboutUsArtAndFashion,
                      fontSize: 50,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Rajdhani",
                    ),

                    //Image

                    Card(
                      elevation: 5,
                      child: Container(
                        width: 500,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/images/means_jeans/Picture1.png",
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    title: HomePageText.aboutUsDescription,
                    fontColor: Colors.black,
                    textAlign: TextAlign.start,
                    fontSize: 20,
                    fontFamily: "Rajdhani",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
