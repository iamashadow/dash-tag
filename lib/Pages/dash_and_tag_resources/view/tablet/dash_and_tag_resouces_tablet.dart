import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/our_complience_section.dart';
import '../../component/desktop/about_us_page_banner.dart';
import '../../component/tablet/log_description_tablet.dart';

class DashAndTagResoucesTablet extends StatelessWidget {
  DashAndTagResoucesTablet({super.key});

  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [
          CustomAppbar(controller: controller),

          AboutUsPageBanner(bannerHeight: 15.sh,),

          LogoDescriptionTablet(
            aboutUsFontSize: 10.sw,
            descriptionCommitFontSize: 3.2.sw,
            descriptionContainerWidth: double.maxFinite,
            descriptionFontSize: 3.sw,
            logoHeight: 65.sh,
            logoWidth: double.maxFinite,
          ),
          SizedBox(height: 2.sh,),

          OurCompliencesSection(),

          const Footer(),
        ],
      ),
    );
  }
}


// AboutUsPageLogoAndDescriptionTablet(
// aboutUsFontSize: 10.sw,
// descriptionCommitFontSize: 3.sw,
// descriptionContainerWidth: 50.sh,
// descriptionFontSize: 2.sw,
// logoHeight: 15.sh,
// logoWidth: 35.sw,
// ),