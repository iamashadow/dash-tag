import 'package:dash_and_tag_web_site/Pages/contact_us_page/component/desktop/contact_information_showing_widget.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/Contact_Us_Page_Text/contact_us_page_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: ContactUsPageText.contactUsText,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.whiteColor,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.bdBranchText,
          subTitle: ContactUsPageText.bdBranchTextAddress,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.indiaBranchText,
          subTitle: ContactUsPageText.indiaBranchTAddress,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.locationDot,
          title: ContactUsPageText.englandBranchText,
          subTitle: ContactUsPageText.englandBranchAddress,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.phone,
          title: ContactUsPageText.phoneText,
          subTitle: ContactUsPageText.phoneNumber,
        ),
        const SizedBox(height: 20,),

        ContactInformationShowingWidget(
          icon: FontAwesomeIcons.mailchimp,
          title: ContactUsPageText.emailText,
          subTitle: ContactUsPageText.emailAddress,
        ),
        const SizedBox(height: 70,),

        CustomText(
          title: ContactUsPageText.keepInTouchText,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.whiteColor,
          letterSpacing: 2,
        ),
        const SizedBox(height: 20,),

        const Row(
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
