import 'package:dash_and_tag_web_site/Utils/Profile_Pdf/profile_pdf.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../Utils/All_Colors/all_colors.dart';
import '../../controller/main_controller.dart';
import '../home_page/component/desktop/widgets/footer_bottom_social_buttons.dart';
import '../home_page/view/desktop/home_page_desktop.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,

      // body: ListView(
      //   children: [
      //     ProductsPageHeaderImage(
      //       title: "Company Profile",
      //     ),
      //     const SizedBox(height: 50),
      //
      //     Padding(
      //       padding:  const EdgeInsets.all(100.0),
      //       child: SfPdfViewer.asset(ShowProfilePdf.profilePdfLink),
      //     ),
      //
      //     const SizedBox(height: 250),
      //
      //     const Footer(),
      //   ],
      // ),

      body: SfPdfViewer.asset(
        ShowProfilePdf.profilePdfLink,
        canShowPaginationDialog: false,
      ),
    );
  }
}
