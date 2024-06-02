import 'package:flutter/material.dart';
import 'widgets/header_right.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 700,
      width: double.infinity,
      child: HeaderRight(),
    );
  }
}
