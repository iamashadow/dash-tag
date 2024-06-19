import 'package:dash_and_tag_web_site/Universal_Widgets/custom_expantion_widget.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Drawer(
        width: Get.width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: ListView(
          children: List.generate(
            controller.appbarActions.length,
            (index) {
              final action = controller.appbarActions[index];
              return CustomExpansionWidget(
                title: action.title,
                route: action.path,
                categories: action.categories,
              );
            },
          ),
        ),
      ),
    );
  }
}
