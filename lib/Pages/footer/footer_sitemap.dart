import 'package:flutter/material.dart';

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
          // 'Site Map'.poppins(
          //   fontWeight: FontWeight.bold,
          //   color: Colors.white,
          //   fontSize: 18 + 6 * pad,
          // ),
          // SizedBox(height: 18 + 6 * pad),
          // TextButton(
          //   onPressed: () {},
          //   child: 'Home'.poppins(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //     fontSize: 14 + 2 * pad,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),
          // SizedBox(height: 10 + 6 * pad),
          // TextButton(
          //   onPressed: () {},
          //   child: 'Pages'.poppins(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //     fontSize: 14 + 2 * pad,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),
          // SizedBox(height: 10 + 6 * pad),
          // TextButton(
          //   onPressed: () {},
          //   child: 'Projects'.poppins(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //     fontSize: 14 + 2 * pad,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),
          // SizedBox(height: 10 + 6 * pad),
          // TextButton(
          //   onPressed: () {},
          //   child: 'Shop'.poppins(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //     fontSize: 14 + 2 * pad,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),

          Text(
            'Site Map',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18 + 6 * 0.5,
            ),
          ),
          SizedBox(height: 18 + 6 * 0.5),
          TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.5,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.5),
          TextButton(
            onPressed: () {},
            child: Text(
              'Pages',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.5,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.5),
          TextButton(
            onPressed: () {},
            child: Text(
              'Projects',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.5,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.5),
          TextButton(
            onPressed: () {},
            child: Text(
              'Shop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.5,
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
