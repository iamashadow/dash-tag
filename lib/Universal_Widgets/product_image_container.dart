import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';

class ProductImageContainer extends StatelessWidget {
  final Color? color;
  final int? index;
  final List<String>? imageList;
  double? imageContainerHeight;
  double? imageContainerWidth;

  ProductImageContainer({
    super.key,
    this.color,
    this.index,
    this.imageList,
    this.imageContainerHeight,
    this.imageContainerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      // width: 300,

      height: imageContainerHeight,
      width: imageContainerWidth,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: ColorManager.blueColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
