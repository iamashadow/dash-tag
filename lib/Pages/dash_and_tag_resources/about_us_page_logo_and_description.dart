import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/dash_and_tag_resources.dart';
import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/widgets/das_and_tag_bio_commit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Universal_Widgets/custom_text.dart';
import '../../Utils/All_Colors/all_colors.dart';
import '../../Utils/All_Texts/Dash_And_Tag_Resources/dash_and_tag_resources.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsPageLogoAndDescription extends StatelessWidget {
  const AboutUsPageLogoAndDescription({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlutterLogo(size: 400,),
          const SizedBox(width: 20,),

          Column(
            children: [
              const SizedBox(height: 40,),
              CustomText(
                title: HomePageText.aboutUs,
                letterSpacing: 2,
                fontColor: Colors.deepOrangeAccent,
                fontSize: 10.sp,
                fontFamily: "Caveat",
              ),
              const SizedBox(height: 20,),

              Container(
                // color: ColorManager.greenlight,
                width: size.width*0.6,
                padding:  const EdgeInsets.all(10),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: DashAndTagResourcesText.dashAndTagBio,
                        fontFamily: "Rajdhani",
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                      DasAndTagBioCommit(commit: DashAndTagResourcesText.dashAndTagBioCommit1,),
                      DasAndTagBioCommit(commit: DashAndTagResourcesText.dashAndTagBioCommit2,),
                      DasAndTagBioCommit(commit: DashAndTagResourcesText.dashAndTagBioCommit3,),
                      DasAndTagBioCommit(commit: DashAndTagResourcesText.dashAndTagBioCommit4,),
                      DasAndTagBioCommit(commit: DashAndTagResourcesText.dashAndTagBioCommit5,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
