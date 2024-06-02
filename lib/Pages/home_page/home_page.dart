import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about_us.dart';
import 'header_section.dart';
import 'our_complience_section.dart';
import 'our_product_section.dart';
import 'why_choose_us.dart';
import 'widgets/footer_bottom_social_buttons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dash&Tag'),
        actions: [
          ...List.generate(controller.appbarActions.length, (index) {
            final action = controller.appbarActions[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                //show subcategories
                if (action.categories != null) {
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return action.categories!
                          .map((e) => PopupMenuItem(
                                child: Text(e.title),
                              ))
                          .toList();
                    },
                  );
                }
              },
              child: DropdownButtonHideUnderline(
                  child: action.categories != null
                      ? DropdownButton2(
                          items: action.categories!
                              .map((e) => DropdownMenuItem(
                                    value: e.title,
                                    child: Row(
                                      children: [
                                        Text(e.title),
                                        if (e.subCategories != null)
                                          Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            // controller.onActionTap(action.title, value.toString());
                            printInfo(info: value.toString());
                          },
                          hint: Text(action.title),
                        )
                      : Container()),
            );
          }),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(children: const [
        HeaderSection(),
        AboutUsPage(),
        WhyChooseUsSection(),
        OurProductsSection(),
        OurCompliencesSection(),
        Footer(),
      ]),
    );
  }
}
