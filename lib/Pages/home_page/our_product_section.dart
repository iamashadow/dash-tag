import 'package:flutter/material.dart';

class OurProductsSection extends StatelessWidget {
  const OurProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.green,
      child: const Center(
        child: Text('Our Products'),
      ),
    );
  }
}
