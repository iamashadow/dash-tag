import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Texts/Contact_Us_Page_Text/contact_us_page_text.dart';
import '../desktop/contact_information_showing_widget.dart';

class ContactInformationMobile extends StatelessWidget {
  const ContactInformationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: ContactUsPageText.contactUsText,
          fontSize: 50,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.whiteColor,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.bdBranchText,
          subTitle: ContactUsPageText.bdBranchTextAddress,
          listTileWidth: 50,
          litTileHeight: 50,
          titleFontSize: 20,
          subTitleFontSize: 15,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.indiaBranchText,
          subTitle: ContactUsPageText.indiaBranchTAddress,
          listTileWidth: 50,
          litTileHeight: 50,
          titleFontSize: 20,
          subTitleFontSize: 15,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.englandBranchText,
          subTitle: ContactUsPageText.englandBranchAddress,
          listTileWidth: 50,
          litTileHeight: 50,
          titleFontSize: 20,
          subTitleFontSize: 15,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.phone,
          title: ContactUsPageText.phoneText,
          subTitle: ContactUsPageText.phoneNumber,
          listTileWidth: 50,
          litTileHeight: 50,
          titleFontSize: 20,
          subTitleFontSize: 15,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.mailchimp,
          title: ContactUsPageText.emailText,
          subTitle: ContactUsPageText.emailAddress,
          listTileWidth: 50,
          litTileHeight: 50,
          titleFontSize: 20,
          subTitleFontSize: 15,
        ),
        const SizedBox(height: 70,),

        CustomText(
          title: ContactUsPageText.keepInTouchText,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.whiteColor,
          letterSpacing: 2,
          fontSize: 20,
        ),
        const SizedBox(height: 20,),

        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(FontAwesomeIcons.twitter, color: ColorManager.whiteColor,),
            SizedBox(width: 40,),

            Icon(FontAwesomeIcons.facebook, color: ColorManager.whiteColor,),
            SizedBox(width: 40,),

            Icon(FontAwesomeIcons.instagram, color: ColorManager.whiteColor,),
            SizedBox(width: 40,),

            Icon(FontAwesomeIcons.linkedin, color: ColorManager.whiteColor,),

          ],
        ),


      ],
    );
  }
}
