import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/desktop/contact_us_page.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/mobile/contact_us_page_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/view/tablet/contact_us_page_tablet.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/responsive_layout_builder.dart';
import 'package:flutter/material.dart';

class ContactUsRoot extends StatelessWidget {
  const ContactUsRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      mobile: ContactUsPageMobile(),
      tablet: ContactUsPageTablet(),
      desktop: ContactUsPageDesktop(),
    );
  }
}
