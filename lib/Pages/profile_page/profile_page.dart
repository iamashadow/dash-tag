import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/all_colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:universal_html/html.dart' as html;
import '../../Universal_Widgets/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.webBackgroundColor,
        drawer: CustomDrawer(controller: controller),
        body: Column(
          children: [
            //header appbar
            CustomAppbar(controller: controller),
            Expanded(
              child: SfPdfViewer.asset(
                "assets/images/profile_pdf/mypdf.pdf",
                canShowPaginationDialog: false,
              ),
            ),
          ],
        ),
        //download button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //download pdf
            html.AnchorElement(href: 'assets/images/profile_pdf/mypdf.pdf')
      ..setAttribute("download", "mypdf.pdf")
      ..click();
          },
          child: Icon(Icons.download),
        ));
  }
}
