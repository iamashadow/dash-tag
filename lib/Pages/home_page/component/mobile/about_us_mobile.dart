import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sh,
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 30, right: 50),
      color: const Color(0xFFF4F0EC).withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBOx
          SizedBox(
            height: 3.sh,
          ),

          //Dash And Tag Resources
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 20,
            fontFamily: "Rajdhani",
          ),

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
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              height: 30.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/means_jeans/Picture1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5.sh,
          ),

          //About Us Text
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.blue,
            fontSize: 15.sw,
            fontFamily: "Caveat",
          ),

          //Description
          Align(
            alignment: Alignment.center,
            child: Expanded(
              child: CustomText(
                title: HomePageText.aboutUsDescription,
                fontColor: Colors.black,
                textAlign: TextAlign.start,
                fontSize: 4.sw,
                fontFamily: "Rajdhani",
              ),
            ),
          )
        ],
      ),
    );
  }
}
