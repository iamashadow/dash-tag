import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';

class ProductImageContainer extends StatelessWidget {
  final Color? color;
  final int? index;
  final List<String>? imageList;

  ProductImageContainer({
    super.key,
    this.color,
    this.index,
    this.imageList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: ColorManager.blueColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageList![index!],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
