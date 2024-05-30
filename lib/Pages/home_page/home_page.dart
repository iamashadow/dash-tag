import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'header_section.dart';
import 'our_complience_section.dart';
import 'our_product_complience.dart';
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
            return TextButton(
              onPressed: () {},
              child: Text(action,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            );
          }),
          const FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(children: const [
        HeaderSection(),
        WhyChooseUsSection(),
        OurProductsSection(),
        OurCompliencesSection(),
        Footer(),
      ]),
    );
  }
}
