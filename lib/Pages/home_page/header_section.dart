import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/header_left.dart';
import 'widgets/header_right.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: ColorManager.whiteColor,
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
