import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 30.w, right: 50.w),
      color: const Color(0xFFF4F0EC).withOpacity(0.5),
      child: Column(
        children: [

          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 3.sp,
            fontFamily: "Rajdhani",

          ),
          SizedBox(height: 30.h,),

          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.deepOrangeAccent,
            fontSize: 10.sp,
            fontFamily: "Caveat",
          ),
          Text(
            HomePageText.aboutUs,
            style: GoogleFonts.msMadi(),
          ),
          SizedBox(height: 50.h,),


          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Expanded(
                          child: CustomText(
                          title: HomePageText.aboutUsArtAndFashion,
                            fontSize: 30,
                            textAlign: TextAlign.end,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rajdhani",
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 200.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/means_jeans/Picture1.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 40.w,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      Expanded(
                        child: CustomText(
                          title: HomePageText.aboutUsDescription,
                          fontColor: Colors.black,
                          textAlign: TextAlign.start,
                          fontSize: 3.sp,
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
