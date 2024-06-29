import 'package:carousel_slider/carousel_controller.dart';
import 'package:dash_and_tag_web_site/model/appbar_action_model.dart';
import 'package:dash_and_tag_web_site/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MainController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  final CarouselController controller = CarouselController();
  final RxInt hoverIndex = 0.obs;
  final isDrawerOpen = false.obs;

  final List<AppBarAction> appbarActions = [
    AppBarAction(title: 'Home', path: AppRoutes.home),
    AppBarAction(
      title: 'About',
      path: "",
      categories: [
        Category(title: 'About CRV Resources', path: AppRoutes.aboutResources),
        Category(title: 'Mission & Vision', path: AppRoutes.missionVision),
      ],
    ),
    AppBarAction(title: 'Profile', path: AppRoutes.profile),
    AppBarAction(
      title: 'Products',
      path: "",
      categories: [
        Category(
          title: 'Mens',
          path: "",
          categories: [
            Category(title: 'T-Shirts', path: AppRoutes.menstshirts),
            Category(title: 'Shirts', path: AppRoutes.mensshirtspants),
            Category(title: 'Pants', path: AppRoutes.mensjeans),
            Category(title: 'Jackets', path: AppRoutes.mensjackets),
          ],
        ),
        Category(
          title: 'Womens',
          path: "",
          categories: [
            Category(title: 'T-Shirts', path: AppRoutes.womenstshirts),
            Category(title: 'Shirts', path: AppRoutes.womensshirtspants),
            Category(title: 'Pants', path: AppRoutes.womensjeans),
            Category(title: 'Jackets', path: AppRoutes.womensjackets),
          ],
        ),
        Category(
          title: 'Boys',
          path: "",
          categories: [
            Category(title: 'T-Shirts', path: AppRoutes.boystshirts),
            Category(title: 'Shirts', path: AppRoutes.boysshirtspants),
            Category(title: 'Pants', path: AppRoutes.boysjeans),
            Category(title: 'Jackets', path: AppRoutes.boysjackets),
          ],
        ),
        Category(
          title: 'Girls',
          path: "",
          categories: [
            Category(title: 'T-Shirts', path: AppRoutes.girlstshirts),
            Category(title: 'Shirts', path: AppRoutes.girlsshirtspants),
            Category(title: 'Pants', path: AppRoutes.girlsjeans),
            Category(title: 'Jackets', path: AppRoutes.girlsjackets),
          ],
        ),
        Category(title: "Accessories", path: AppRoutes.accessoeies),
        Category(title: "Leather", path: AppRoutes.leatherproduct),
      ],
    ),
    AppBarAction(
      title: 'Services',
      path: AppRoutes.services,
    ),
    AppBarAction(title: 'Our Client', path: AppRoutes.clients),
    AppBarAction(title: 'Contact', path: AppRoutes.contact),
  ];

  List<PlutoMenuItem> convertAppBarActionsToPlutoMenuItems(
      List<AppBarAction> actions) {
    return actions.map((action) {
      if (action.categories != null && action.categories!.isNotEmpty) {
        return PlutoMenuItem(
          title: action.title,
          children: action.categories!.map((category) {
            if (category.categories != null &&
                category.categories!.isNotEmpty) {
              return PlutoMenuItem(
                title: category.title,
                children: category.categories!.map((subCategory) {
                  return PlutoMenuItem(
                    title: subCategory.title,
                    onTap: () {
                      if (subCategory.path != "" &&
                          subCategory.path.isNotEmpty) {
                        Get.toNamed(subCategory.path);
                      }
                    },
                  );
                }).toList(),
              );
            } else {
              return PlutoMenuItem(
                title: category.title,
                onTap: () {
                  if (category.path != "" && category.path.isNotEmpty) {
                    Get.toNamed(category.path);
                  }
                },
              );
            }
          }).toList(),
        );
      } else {
        return PlutoMenuItem(
          title: action.title,
          onTap: () {
            if (action.path != "" && action.path.isNotEmpty) {
              Get.toNamed(action.path);
            }
          },
        );
      }
    }).toList();
  }

  final CarouselController carouselController = CarouselController();
}
