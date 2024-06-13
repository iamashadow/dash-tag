import 'package:dash_and_tag_web_site/Utils/All_Texts/Brand_Management_Page_Text/brand_management_page_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Universal_Widgets/custom_text.dart';
import '../../../Utils/All_Images/all_images.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../home_page/home_page.dart';
import '../../home_page/widgets/footer_bottom_social_buttons.dart';
import '../../mission_vission_page/product_page_header_image.dart';

class BrandManagementPage extends StatelessWidget {
  const BrandManagementPage({super.key});

  @override
  Widget build(BuildContext context) {


    final MainController controller = Get.put(MainController());

    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: InkWell(
      //     onTap: (){
      //       Get.to(HomePage());
      //     },
      //     child: const Text('Dash&Tag'),
      //   ),
      //   actions: [
      //     ...List.generate(controller.appbarActions.length, (index) {
      //       final action = controller.appbarActions[index];
      //       return MouseRegion(
      //         cursor: SystemMouseCursors.click,
      //         onHover: (event) {
      //           //show subcategories
      //           if (action.categories != null) {
      //             PopupMenuButton(
      //               itemBuilder: (context) {
      //                 return action.categories!
      //                     .map((e) => PopupMenuItem(
      //                   child: Text(e.title),
      //                 ))
      //                     .toList();
      //               },
      //             );
      //           }
      //         },
      //         child: DropdownButtonHideUnderline(
      //           child: action.categories != null
      //               ? DropdownButton2(
      //             items: action.categories!
      //                 .map((e) => DropdownMenuItem(
      //               value: e.title,
      //               child: Row(
      //                 children: [
      //                   Text(e.title),
      //                   if (e.subCategories != null)
      //                     const Icon(Icons.arrow_forward_ios)
      //                 ],
      //               ),
      //             ))
      //                 .toList(),
      //             onChanged: (value) {
      //               // controller.onActionTap(action.title, value.toString());
      //               printInfo(info: value.toString());
      //             },
      //             hint: Text(action.title),
      //           )
      //               : Container(),
      //         ),
      //       );
      //     }),
      //     const FooterBottomSocialButtons(),
      //   ],
      // ),

      body: Column(
        children: [

          // Merchandise Content
          ProductsPageHeaderImage(
            title: "Brand Management",
          ),
          const SizedBox(height: 50),

          // Merchandise Contents
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    title: BrandManagementPageText.brandManagementBio,
                  ),
                ),
                const SizedBox(height: 20),

                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AllImages.missionVissionImage),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 250),



          // const Footer(),
        ],
      ),
    );


  }
}
