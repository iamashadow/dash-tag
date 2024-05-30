import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'about_us.dart';
import 'header_section.dart';
import 'why_choose_us.dart';
import 'widgets/footer_bottom_social_buttons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dash&Tag'),
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
          FooterBottomSocialButtons(),
        ],
      ),
      body: ListView(children: [
        HeaderSection(),
        SizedBox(height: 20.h,),

        AboutUsPage(),
        SizedBox(height: 10.h,),

        WhyChooseUsSection(),
        SizedBox(height: 10.h,),
      ]),
    );
  }
}
