import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'footer_bottom.dart';
import 'footer_company.dart';
import 'footer_contact.dart';
import 'footer_info.dart';
import 'footer_sitemap.dart';
import 'footer_subscribde.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
      color: Colors.black,
      child: const Stack(
        clipBehavior: Clip.none,
        children: [
          FooterContact(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 140),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterInfo(),
                  FooterSiteMap(),
                  FooterCompany(),
                  FooterSubscribe(),
                ],
              ),
              SizedBox(height: 40),
              FooterBottom(),
            ],
          ),
        ],
      ),
    );
  }
}
