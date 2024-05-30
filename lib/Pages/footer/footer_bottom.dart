import 'package:dash_and_tag_web_site/Pages/home_page/widgets/footer_bottom_social_buttons.dart';
import 'package:flutter/material.dart';

import 'footer_bottom_licence.dart';

class FooterBottom extends StatelessWidget {
  const FooterBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.green,
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FooterBottomLicence(),
                  FooterBottomSocialButtons(),
                ],
              )
              // : Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: const [
              //       FooterBottomSocialButtons(),
              //       FooterBottomLicence(),
              //     ],
              //   ),
              ),
        ],
      ),
    );
  }
}
