import 'package:flutter/material.dart';

import 'widgets/header_left.dart';
import 'widgets/header_right.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.yellow,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderLeft(),
          HeaderRight(),
        ],
      ),
    );
  }
}
