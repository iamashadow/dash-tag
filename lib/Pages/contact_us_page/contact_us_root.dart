import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/desktop/contact_us_page.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/mobile/contact_us_page_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/tablet/contact_us_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsRoot extends StatelessWidget {
  const ContactUsRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => ContactUsPageMobile(),
      tablet: (BuildContext context) => ContactUsPageTablet(),
      desktop: (BuildContext context) => ContactUsPageDesktop(),
    );
  }
}
