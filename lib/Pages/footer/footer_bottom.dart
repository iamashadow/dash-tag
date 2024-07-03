import 'package:flutter/material.dart';
import '../home_page/component/desktop/widgets/footer_bottom_social_buttons.dart';
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
      child: const Column(
        children: [
          SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  FooterBottomLicence(),
                  // FooterBottomSocialButtons(),
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
