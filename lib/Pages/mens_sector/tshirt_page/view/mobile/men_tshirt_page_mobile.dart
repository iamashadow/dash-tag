import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../../Utils/All_Lists/all_lists.dart';
import '../../../../../controller/main_controller.dart';
import '../../../../footer/footer.dart';
import '../../../../mission_vission_page/component/desktop/product_page_header_image.dart';
import '../../component/mobile/product_image_showing_listviewbuilder_mobile.dart';

class MenTshirtPageMobile extends StatelessWidget {
  MenTshirtPageMobile({super.key});
  final MainController controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          ProductsPageHeaderImage(
            title: "T-shirt",
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),
          Expanded(
            child: ProductImageShowingListviewbuilderMobile(
              items: List<int>.generate(
                  AllListsManager.mensJeansList.length, (index) => index),
              itemsList: List<String>.from(AllListsManager.mensJeansList),
              containerHeight: 30.sh,
              containerWidth: 40.sw,
            ),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
