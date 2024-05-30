import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 50.w, right: 50.w),
      // color: Colors.green,
      child: Column(
        children: [

          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 3.sp,
          ),
          SizedBox(height: 50.h,),


          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/complaients/3.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.w,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomText(
                        title: HomePageText.aboutUs,
                        letterSpacing: 2,
                        fontColor: Colors.deepOrangeAccent,
                        fontSize: 5.sp,
                      ),
                      SizedBox(height: 10.h,),

                      Expanded(
                        child: CustomText(
                          title: HomePageText.aboutUsDescription,
                          fontColor: Colors.black,
                          textAlign: TextAlign.start,
                          fontSize: 3.sp,
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
