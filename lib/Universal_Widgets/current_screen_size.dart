import 'package:flutter/material.dart';

class CurrentScreenSize extends StatelessWidget {
  const CurrentScreenSize({super.key});

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return Text(
      'Screen Size: ${screenSize.width} x ${screenSize.height}',
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
