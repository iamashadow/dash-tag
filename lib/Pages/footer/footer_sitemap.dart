import 'package:flutter/material.dart';

import '../../Utils/All_Texts/Contact_Us_Page_Text/contact_us_page_text.dart';

class FooterSiteMap extends StatelessWidget {
  const FooterSiteMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            'Site Map',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 18),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Pages',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Projects',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Shop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
