import 'package:dash_and_tag_web_site/Pages/mens_sector/polo_shirts/polo_shirts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Universal_Widgets/custom_text.dart';
import '../../../mission_vission_page/view/desktop/mission_vission_desktop_page.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../../dash_and_tag_resources/view/desktop/dash_and_tag_resources.dart';
import '../../../mens_sector/hoodies_page/hoodies_page.dart';
import '../../../mens_sector/jackets_page/jackets_page.dart';
import '../../../mens_sector/men_jeans/mens_jeans.dart';
import '../../../mens_sector/shorts_and_cargo_page/shorts_and_cargo_page.dart';
import '../../../mens_sector/sweaters_page/sweaters_page.dart';
import '../../../mens_sector/tshirt_page/view/desktop/tshirt_page_desktop.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getValueForScreenType<double>(
        context: context,
        mobile: 500,
        tablet: 700,
        desktop: 1000,
      ) ,
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 30, right: 50),
      color: const Color(0xFFF4F0EC).withOpacity(0.3),
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBOx
          SizedBox(
            height: getValueForScreenType<double>(
                context: context,
                mobile: 0,
              tablet: 0,
              desktop: 5.sh,
            )
          ),

          //Dash And Tag Resources
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: getValueForScreenType<double>(
              context: context,
              mobile: 0,
              tablet: 0,
              desktop: 2.sw,
            ),
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

          getValueForScreenType<bool>(
            context: context,
            mobile: true,
            tablet: false,
            desktop: false,
          ) ? Card(child: Text("Mobile", style: TextStyle(color: Colors.red),))
              : getValueForScreenType<bool>(
            context: context,
            mobile: false,
            tablet: true,
            desktop: false,
          ) ? Card(child: Text("Tablet", style: TextStyle(color: Colors.red),)) : Card(child: Text("Desktop", style: TextStyle(color: Colors.red),)),

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
                      fontSize: getValueForScreenType<double>(
                        context: context,
                        mobile: 0,
                        tablet: 0,
                        desktop: 5.sh,
                      ),
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Rajdhani",
                    ),

                    //Image

                    Card(
                      elevation: 5,
                      child: Container(
                        // width: 500,
                        // height: 350,
                        width: 45.sw,
                        height: 25.sh,
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
              SizedBox(
                width: 1.sw,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    title: HomePageText.aboutUsDescription,
                    fontColor: Colors.black,
                    textAlign: TextAlign.start,
                    fontSize: 2.sw,
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
