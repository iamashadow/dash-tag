import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterBottomSocialButtons extends StatelessWidget {
  const FooterBottomSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff988968)),
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 40,
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 20,
                    color: Color(0xff988968),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Material(
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff988968)),
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 40,
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 20,
                    color: Color(0xff988968),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Material(
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff988968)),
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 40,
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.linkedinIn,
                    size: 20,
                    color: Color(0xff988968),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
