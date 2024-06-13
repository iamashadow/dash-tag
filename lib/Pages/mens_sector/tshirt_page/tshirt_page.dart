import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../home_page/home_page.dart';
import '../../home_page/widgets/footer_bottom_social_buttons.dart';
import '../../mission_vission_page/product_page_header_image.dart';

class TshirtPage extends StatelessWidget {
  TshirtPage({super.key});
  final MainController controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          ProductsPageHeaderImage(
            title: "T-shirt",
          ),
          const SizedBox(height: 50),
          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.kidsClothList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.kidsClothList),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
