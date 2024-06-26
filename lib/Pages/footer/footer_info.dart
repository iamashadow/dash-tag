import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getValueForScreenType<bool>(
            context: context,
            mobile: true,
            tablet: true,
            desktop: false,
          )
              ? Column(
                  children: [
                    Image.asset(
                      AllImages.webSiteLogo,
                      width: 20.sw,
                      height: 20.sh,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Dash&Tag',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        height: 1.5,
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Image.asset(
                      AllImages.webSiteLogo,
                      width: 20.sw,
                      height: 20.sh,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Dash&Tag',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
          SizedBox(
              height: getValueForScreenType<double>(
            context: context,
            mobile: 10,
            tablet: 20,
            desktop: 20,
          )),
          const Text(
            '+1 (885) 589 69 85',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: getValueForScreenType<double>(
              context: context,
              mobile: 8,
              tablet: 8,
              desktop: 16,
            ),
          ),
          const Text(
            "info@dash&tag.com",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: getValueForScreenType<double>(
              context: context,
              mobile: 8,
              tablet: 8,
              desktop: 16,
            ),
          ),
          const Text(
            "Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 USA",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
