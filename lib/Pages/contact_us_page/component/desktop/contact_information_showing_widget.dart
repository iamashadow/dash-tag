import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/Contact_Us_Page_Text/contact_us_page_text.dart';
import 'package:flutter/material.dart';

class ContactInformationShowingWidget extends StatelessWidget {

  IconData? icon;
  String? title;
  String? subTitle;
  double? litTileHeight;
  double? listTileWidth;
  double? titleFontSize;
  double? subTitleFontSize;



  ContactInformationShowingWidget({super.key,

    this.icon,
    this.title,
    this.subTitle,
    this.listTileWidth,
    this.litTileHeight,
    this.titleFontSize,
    this.subTitleFontSize,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          child: ListTile(
            leading: Container(
              width: listTileWidth,
              height: litTileHeight,
              decoration: const BoxDecoration(
                color: ColorManager.blueColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white),
            ),
            title: CustomText(
              title: title,
              fontColor: ColorManager.whiteColor,
              fontSize: titleFontSize,
            ),
            subtitle: CustomText(
              title: subTitle,
              fontSize: subTitleFontSize,
              fontColor: ColorManager.whiteColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
            thickness: 2, // Slightly reduced thickness
            color: Colors.white,
            height: 20

        ),

      ],
    );
  }
}
