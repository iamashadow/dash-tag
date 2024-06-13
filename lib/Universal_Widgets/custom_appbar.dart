import 'package:dash_and_tag_web_site/Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(
            AllImages.webSiteLogoTransparent,
            width: 50,
            height: 50,
          ),
          const Spacer(),
          SizedBox(
            width: Get.width * 0.5,
            child: PlutoMenuBar(
              mode: PlutoMenuBarMode.hover,
              menus: controller.convertAppBarActionsToPlutoMenuItems(
                  controller.appbarActions),
              itemStyle: const PlutoMenuItemStyle(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              borderColor: Colors.transparent,
            ),
          ),
          const FooterBottomSocialButtons(),
        ],
      ),
    );
  }
}
