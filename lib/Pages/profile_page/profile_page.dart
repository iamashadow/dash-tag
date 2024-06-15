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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: (){
            Get.to(HomePageDesktop());
          },
          child: const Text('Dash&Tag'),
        ),
        actions: [
          ...List.generate(controller.appbarActions.length, (index) {
            final action = controller.appbarActions[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                //show subcategories
                if (action.categories != null) {
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return action.categories!
                          .map((e) => PopupMenuItem(
                        child: Text(e.title),
                      ))
                          .toList();
                    },
                  );
                }
              },
              child: DropdownButtonHideUnderline(
                child: action.categories != null
                    ? DropdownButton2(
                  items: action.categories!
                      .map((e) => DropdownMenuItem(
                    value: e.title,
                    child: Row(
                      children: [
                        Text(e.title),
                        if (e.subCategories != null)
                          const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ))
                      .toList(),
                  onChanged: (value) {
                    // controller.onActionTap(action.title, value.toString());
                    printInfo(info: value.toString());
                  },
                  hint: Text(action.title),
                )
                    : Container(),
              ),
            );
          }),
          const FooterBottomSocialButtons(),
        ],
      ),

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
