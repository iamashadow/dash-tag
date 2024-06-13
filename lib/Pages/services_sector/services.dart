import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Utils/All_Colors/all_colors.dart';
import '../../Utils/All_Lists/all_lists.dart';
import '../../Utils/All_Texts/Brand_Management_Page_Text/brand_management_page_text.dart';
import '../../Utils/All_Texts/Designing_Page_Text/designing_page_text.dart';
import '../../Utils/All_Texts/Logistics_Page_Text/logistics_page_text.dart';
import '../../Utils/All_Texts/Merchandise_SourchingPageText/merchandise_sourching_page_text.dart';
import '../../Utils/All_Texts/Quality_Assurance_PageText/quality_assurance_page_text.dart';
import '../../Utils/All_Texts/Social_Complience_Page_Text/social_complience_page_text.dart';
import '../../Utils/All_Texts/TestingAndAnalysisPageText/testing_and_analysis_page_text.dart';
import '../../Utils/All_Texts/Third_Party_Inispaction_Page_Text/third_party_inispection_page_text.dart';
import '../../controller/main_controller.dart';
import '../footer/footer.dart';
import '../home_page/home_page.dart';
import '../home_page/widgets/footer_bottom_social_buttons.dart';
import '../mission_vission_page/product_page_header_image.dart';

class ServicesPages extends StatelessWidget {
  const ServicesPages({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          //Merchandise Contents
          ProductsPageHeaderImage(
            title: "About Our Services",
          ),
          const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Merchandise Contents
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Merchandise",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: MerchandiseSourchingPageText.merchandiseBio,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AllImages.merchandiseImage))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Quality Assurance
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.qualityAssuranceImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Quality Assurance",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          CustomText(
                            title:
                                QualityAssurancePageText.QualityAssuranceBio1,
                          ),
                          const SizedBox(
                              height: 10), // Add spacing between texts

                          CustomText(
                            title:
                                QualityAssurancePageText.QualityAssuranceBio2,
                          ),
                          const SizedBox(height: 20), //

                          GridView.builder(
                              itemCount:
                                  AllListsManager.qualityPointsList.length,
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 4,
                              ),
                              itemBuilder: (context, index) {
                                return Card(
                                  color: ColorManager.blueColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Center(
                                      child: CustomText(
                                        title: AllListsManager
                                            .qualityPointsList[index],
                                        fontColor: ColorManager.whiteColor,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          const SizedBox(height: 20),

                          CustomText(
                            title:
                                QualityAssurancePageText.QualityAssuranceBio3,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Brand Management
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Brand Management",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: BrandManagementPageText.brandManagementBio,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.brandManagementImage),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Testing Ande Analysis
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(AllImages.testingAndAnalysisImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Testing & Analysis",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: TestingAndAnalysisPageText
                                .testingAndAnalysisBio1,
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: TestingAndAnalysisPageText
                                .testingAndAnalysisBio2,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Third Party Inspection
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Third Party Inspection",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: ThirdPartyInispectionPageText
                                .thirdPartyInispactionBio,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(AllImages.thirdPartyInspectionImage),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Social Compliance
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.socialComplienceImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Social Compliance",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: SocialCompliencePageText.socialComplienceBio,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Logistics
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Logistics",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: LogisticsPageText.logistisPageBio,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.logisticsImage),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //Designing
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.designingImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                title: "Designing",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.certificate,
                                color: ColorManager.blueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomText(
                            title: DesigningPageText.desiginingPageBio,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 250),
              ],
            ),
          ),

          const Footer(),
        ],
      ),
    );
  }
}
