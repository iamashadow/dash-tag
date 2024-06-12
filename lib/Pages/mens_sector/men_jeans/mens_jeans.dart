import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../home_page/home_page.dart';
import '../../home_page/widgets/footer_bottom_social_buttons.dart';
import '../../mission_vission_page/product_page_header_image.dart';

class MeansJeans extends StatelessWidget {
  MeansJeans({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Image.asset(
          AllImages.webSiteLogoTransparent,
          width: 50,
          height: 50,
        ),
        title: const Text('Dash&Tag'),
        actions: [
          SizedBox(
            width: Get.width * 0.5,
            child: PlutoMenuBar(
              mode: PlutoMenuBarMode.hover,
              menus: controller.convertAppBarActionsToPlutoMenuItems(
                  controller.appbarActions),
            ),
          ),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Mean's Jeans",
          ),
          const SizedBox(height: 50),
          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.complientsList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.complientsList),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
