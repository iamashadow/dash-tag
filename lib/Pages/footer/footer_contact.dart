import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'meter_item.dart';

class FooterContact extends StatelessWidget {
  const FooterContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -130,
      left: Get.width * 0.1,
      right: Get.width * 0.1,
      child: Container(
        height: 250,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFEDB42), Color(0xff94DA44)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 36 + 24 * 0.0,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 24),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Let\'s Work',
                      style: TextStyle(
                        fontSize: 40 + 24 * 0.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),
                    Text(
                      'together',
                      style: TextStyle(
                        fontSize: 40 + 24 * 0.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Material(
                  color: Colors.orange,
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 + 12 * 0.0, vertical: 12 + 8 * 0.0),
                      child: Row(
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 14 + 2 * 0.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(width: 8 + 4 * 0.0),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.white,
                            size: 14 + 2 * 0.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(50, (index) {
                  final isTall = index % 2 != 0;
                  final metric = (index != 0 && (index + 1) % 10 == 0)
                      ? '${(index + 1) / 2}'
                      : '';

                  return MeterItem(isTall: isTall, metric: metric);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
