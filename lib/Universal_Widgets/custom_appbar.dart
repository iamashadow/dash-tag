import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:dash_and_tag_web_site/Utils/routes.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Pages/home_page/component/desktop/widgets/footer_bottom_social_buttons.dart';

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
      padding: EdgeInsets.symmetric(
        horizontal: getValueForScreenType<double>(
          context: context,
          mobile: 0,
          tablet: Get.width * 0.04,
          desktop: Get.width * 0.1,
        ),
      ),
      color: Colors.white,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.home);
            },
            child: Image.asset(
              AllImages.webSiteLogoTransparent,
              width: 50,
              height: 50,
            ),
          ),
          const Spacer(),
          getValueForScreenType<bool>(
            context: context,
            mobile: true,
            tablet: false,
            desktop: false,
          )
              ? IconButton(
                  icon: Icon(Scaffold.of(context).isDrawerOpen
                      ? Icons.close
                      : Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: getValueForScreenType<double>(
                        context: context,
                        mobile: 0,
                        tablet: 65.sw,
                        desktop: 100.sw,
                      ),
                      child: PlutoMenuBar(
                        mode: PlutoMenuBarMode.hover,
                        menus: controller.convertAppBarActionsToPlutoMenuItems(
                            controller.appbarActions),
                        itemStyle: PlutoMenuItemStyle(
                          padding: EdgeInsets.symmetric(
                            horizontal: getValueForScreenType<double>(
                              context: context,
                              mobile: 5,
                              tablet: 5,
                              desktop: 12,
                            ),
                          ),
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: getValueForScreenType<double>(
                              context: context,
                              mobile: 5,
                              tablet: 10,
                              desktop: 14,
                            ),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        borderColor: Colors.transparent,
                      ),
                    ),
                    const FooterBottomSocialButtons()
                  ],
                ),
        ],
      ),
    );
  }
}
