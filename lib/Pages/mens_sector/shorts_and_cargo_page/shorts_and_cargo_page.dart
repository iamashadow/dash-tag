import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../home_page/component/desktop/widgets/footer_bottom_social_buttons.dart';
import '../../home_page/view/desktop/home_page_desktop.dart';
import '../../mission_vission_page/component/desktop/product_page_header_image.dart';

class ShortsAndCargoPage extends StatelessWidget {
  const ShortsAndCargoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Short's And Cargo",
          ),
          const SizedBox(height: 50),
          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.womensClothList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.womensClothList),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
