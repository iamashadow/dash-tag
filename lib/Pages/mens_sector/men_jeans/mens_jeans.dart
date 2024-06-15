import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../mission_vission_page/component/desktop/product_page_header_image.dart';

class MeansJeans extends StatelessWidget {
  MeansJeans({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
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
