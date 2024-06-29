// import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
// import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../../../../universal_widgets/custom_text.dart';
//
// class HowItWorksCardItem extends StatefulWidget {
//
//   HowItWorksCardItem({super.key,
//
//   });
//
//   @override
//   State<HowItWorksCardItem> createState() => _HowItWorksCardItemState();
// }
//
// class _HowItWorksCardItemState extends State<HowItWorksCardItem> {
//   // Track hover state for each item
//   List<bool> isHovering = [];
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize hover state list with false values
//     isHovering =
//         List.generate(AllListsManager.whyChooseUsList.length, (index) => false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: ScrollPhysics(),
//       padding: const EdgeInsets.symmetric(horizontal: 150),
//       shrinkWrap: true,
//       itemCount: AllListsManager.whyChooseUsList.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         childAspectRatio: 2,
//       ),
//       itemBuilder: (context, index) {
//         return MouseRegion(
//           onEnter: (val) => setState(() => isHovering[index] = true),
//           onExit: (val) => setState(() => isHovering[index] = false),
//           child: AnimatedContainer(
//             width: 200,
//             height: 200,
//             duration: const Duration(milliseconds: 240),
//             padding: const EdgeInsets.all(32),
//             decoration: BoxDecoration(
//               color: isHovering[index]
//                   ? ColorManager.whiteColor
//                   : ColorManager.whiteColor.withOpacity(0),
//               boxShadow: [
//                 BoxShadow(
//                   color: isHovering[index]
//                       ? ColorManager.textPrimary.withOpacity(0.15)
//                       : ColorManager.textPrimary.withOpacity(0),
//                   offset: const Offset(0, 6),
//                   blurRadius: 10,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Icon(
//                   FontAwesomeIcons.gift,
//                   color: ColorManager.greenColor,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomText(
//                   title: AllListsManager.whyChooseUsList[index]["title"],
//                   fontWeight: FontWeight.bold,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomText(
//                   title: AllListsManager.whyChooseUsList[index]["description"],
//                   fontWeight: FontWeight.w500,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../universal_widgets/custom_text.dart';

class HowItWorksCardItem extends StatefulWidget {
  final int? crossAxisCount;
  final double? cardHeight;
  final double? cardWidth;
  final double? paddingAroundCard;
  final double? titleFontSize;
  final double? subTitleFontSize;

  HowItWorksCardItem({
    super.key,
    this.crossAxisCount,
    this.cardHeight,
    this.cardWidth,
    this.paddingAroundCard,
    this.titleFontSize,
    this.subTitleFontSize,
  });

  @override
  State<HowItWorksCardItem> createState() => _HowItWorksCardItemState();
}

class _HowItWorksCardItemState extends State<HowItWorksCardItem> {
  // Track hover state for each item
  List<bool> isHovering = [];

  @override
  void initState() {
    super.initState();
    // Initialize hover state list with false values
    isHovering =
        List.generate(AllListsManager.whyChooseUsList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      padding:
          EdgeInsets.symmetric(horizontal: widget.paddingAroundCard ?? 0.0),
      shrinkWrap: true,
      itemCount: AllListsManager.whyChooseUsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount ?? 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // childAspectRatio: (widget.cardWidth ?? 1) / (widget.cardHeight ?? 1),
        childAspectRatio: 1.090,
        // childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (val) => setState(() => isHovering[index] = true),
          onExit: (val) => setState(() => isHovering[index] = false),
          child: AnimatedContainer(
            width: widget.cardWidth ?? 200,
            height: widget.cardHeight ?? 200,
            duration: const Duration(milliseconds: 240),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: isHovering[index]
                  ? ColorManager.whiteColor
                  : ColorManager.webBackgroundColor.withOpacity(0.15),
              boxShadow: [
                BoxShadow(
                  color: isHovering[index]
                      ? ColorManager.textPrimary.withOpacity(0.15)
                      : ColorManager.textPrimary.withOpacity(0),
                  offset: const Offset(0, 6),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  FontAwesomeIcons.gift,
                  color: ColorManager.greenColor,
                ),
                const SizedBox(height: 25),
                AutoSizeText(
                  AllListsManager.whyChooseUsList[index]["title"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.titleFontSize,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  maxFontSize: widget.titleFontSize!,
                  minFontSize: widget.titleFontSize!-(widget.titleFontSize!-1),
                  stepGranularity: 1,
                ),
                SizedBox(height: 25),
                AutoSizeText(
                  AllListsManager.whyChooseUsList[index]["description"],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: widget.subTitleFontSize,
                  ),
                  maxLines: 3,

                  overflow: TextOverflow.ellipsis,
                  maxFontSize: widget.subTitleFontSize!,
                  minFontSize: widget.subTitleFontSize!-(widget.subTitleFontSize!-1),
                  stepGranularity: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


//
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Icon(
// FontAwesomeIcons.gift,
// color: ColorManager.greenColor,
// ),
// const SizedBox(height: 32),
// CustomText(
// title: AllListsManager.whyChooseUsList[index]["title"],
// fontWeight: FontWeight.bold,
// fontSize: widget.titleFontSize,
// ),
// SizedBox(height: 2.sh),
// CustomText(
// title: AllListsManager.whyChooseUsList[index]["description"],
// fontWeight: FontWeight.w500,
// fontSize: widget.subTitleFontSize,
// ),
// ],
// ),