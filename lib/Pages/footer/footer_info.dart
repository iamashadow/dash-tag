import 'package:flutter/material.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   children: [
          //     Image.asset(
          //       'Logo.png'.icon,
          //       width: 36,
          //       height: 36,
          //       fit: BoxFit.cover,
          //       filterQuality: FilterQuality.high,
          //       isAntiAlias: true,
          //     ),
          //     const SizedBox(width: 16),
          //     'Ventura'.poppins(
          //       color: white,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 24,
          //       height: 1.5,
          //     ),
          //   ],
          // ),
          // SizedBox(height: 24 + 8 * pad),
          // '+1 (885) 589 69 85'.poppins(
          //   color: white,
          //   fontWeight: FontWeight.w500,
          //   fontSize: 14 + 4 * pad,
          //   height: 1.5,
          // ),
          // SizedBox(height: 16 + 8 * pad),
          // 'info@ventura.com'.poppins(
          //   color: white,
          //   fontWeight: FontWeight.w500,
          //   fontSize: 14 + 4 * pad,
          //   height: 1.5,
          // ),
          // SizedBox(height: 16 + 8 * pad),
          // 'Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 USA'.poppins(
          //   color: white,
          //   fontWeight: FontWeight.w500,
          //   fontSize: 13 + 3 * pad,
          //   height: 1.5,
          // ),

          Row(
            children: [
              // Image.asset(
              //   //default flutter logo,
              //   'assets/images/logo.png',
              //   width: 36,
              //   height: 36,
              //   fit: BoxFit.cover,
              //   filterQuality: FilterQuality.high,
              //   isAntiAlias: true,
              // ),
              FlutterLogo(
                size: 36,
              ),
              const SizedBox(width: 16),
              Text(
                'Ventura',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  height: 1.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 24 + 8 * 0.0),
          Text(
            '+1 (885) 589 69 85',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * 0.0,
              height: 1.5,
            ),
          ),
          SizedBox(height: 16 + 8 * 0.0),
          Text(
            "info@ventura.com",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * 0.0,
              height: 1.5,
            ),
          ),
          SizedBox(height: 16 + 8 * 0.0),
          Text(
            "Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 USA",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 13 + 3 * 0.0,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
