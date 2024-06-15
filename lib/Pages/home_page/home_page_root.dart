import 'package:dash_and_tag_web_site/Pages/home_page/view/desktop/home_page_desktop.dart';
import 'package:dash_and_tag_web_site/Pages/home_page/view/mobile/home_page_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/home_page/view/tablet/home_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageRoot extends StatelessWidget {
  const HomePageRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => HomePageMobile(),
      tablet: (BuildContext context) => HomePageTablet(),
      desktop: (BuildContext context) => HomePageDesktop(),
    );
  }
}
