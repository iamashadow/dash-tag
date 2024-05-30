import 'package:flutter/material.dart';

class FooterCompany extends StatelessWidget {
  const FooterCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 'Company'.poppins(
          //   fontWeight: FontWeight.bold,
          //   color: Colors.white,
          //   fontSize: 18 + 6 * pad,
          // ),
          // SizedBox(height: 18 + 6 * pad),
          // TextButton(
          //   onPressed: () {},
          //   child: 'About'.poppins(
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
          //   child: 'Blog'.poppins(
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
          //   child: 'Gallery'.poppins(
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
          //   child: 'Careere'.poppins(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //     fontSize: 14 + 2 ,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),

          Text(
            'Company',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18 + 6 * 0.0,
            ),
          ),
          SizedBox(height: 18 + 6 * 0.0),
          TextButton(
            onPressed: () {},
            child: Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.0,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.0),
          TextButton(
            onPressed: () {},
            child: Text(
              'Blog',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.0,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.0),
          TextButton(
            onPressed: () {},
            child: Text(
              'Gallery',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2 * 0.0,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 10 + 6 * 0.0),
          TextButton(
            onPressed: () {},
            child: Text(
              'Careere',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14 + 2,
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
