import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Images/all_images.dart';
import '../../../../Utils/All_Lists/all_lists.dart';
import '../../../../Utils/All_Texts/Brand_Management_Page_Text/brand_management_page_text.dart';
import '../../../../Utils/All_Texts/Designing_Page_Text/designing_page_text.dart';
import '../../../../Utils/All_Texts/Logistics_Page_Text/logistics_page_text.dart';
import '../../../../Utils/All_Texts/Merchandise_SourchingPageText/merchandise_sourching_page_text.dart';
import '../../../../Utils/All_Texts/Quality_Assurance_PageText/quality_assurance_page_text.dart';
import '../../../../Utils/All_Texts/Social_Complience_Page_Text/social_complience_page_text.dart';
import '../../../../Utils/All_Texts/TestingAndAnalysisPageText/testing_and_analysis_page_text.dart';
import '../../../../Utils/All_Texts/Third_Party_Inispaction_Page_Text/third_party_inispection_page_text.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../mission_vission_page/component/desktop/product_page_header_image.dart';

class ServicesPageMobile extends StatelessWidget {
  ServicesPageMobile({super.key});
  final MainController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          //Merchandise Contents
          ProductsPageHeaderImage(
            title: "About Our Services",
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Merchandise Contents
                // Row(
                //   children: [
                //     Expanded(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Row(
                //             children: [
                //               CustomText(
                //                 title: "Merchandise",
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 4.sw,
                //               ),
                //               SizedBox(
                //                 width: 2.sw,
                //               ),
                //               const Icon(
                //                 FontAwesomeIcons.certificate,
                //                 color: ColorManager.blueColor,
                //               ),
                //             ],
                //           ),
                //           SizedBox(height: 2.sh),
                //           CustomText(
                //             title: MerchandiseSourchingPageText.merchandiseBio,
                //             fontSize: 3.sw,
                //           ),
                //         ],
                //       ),
                //     ),
                //     SizedBox(width: 5.sw),
                //     Card(
                //       elevation: 5,
                //       child: Container(
                //         height: 20.sh,
                //         width: 40.sw,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             image: DecorationImage(
                //                 fit: BoxFit.cover,
                //                 image: AssetImage(AllImages.merchandiseImage))),
                //       ),
                //     ),
                //   ],
                // ),

                //Merchandise Contents
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Merchandise",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AllImages.merchandiseImage))),
                      ),
                    ),
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: MerchandiseSourchingPageText.merchandiseBio,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Quality Assurance
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Quality Assurance",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),

                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.qualityAssuranceImage),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.sh),

                    CustomText(
                      title: QualityAssurancePageText.QualityAssuranceBio1,
                      fontSize: 3.5.sw,
                    ),
                    SizedBox(height: 2.sh), // Add spacing between texts

                    CustomText(
                      title: QualityAssurancePageText.QualityAssuranceBio2,
                      fontSize: 3.5.sw,
                    ),
                    SizedBox(height: 2.sh), //

                    GridView.builder(
                        itemCount: AllListsManager.qualityPointsList.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5,
                            color: ColorManager.blueColor,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: CustomText(
                                  title:
                                      AllListsManager.qualityPointsList[index],
                                  fontColor: ColorManager.whiteColor,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3.sw,
                                ),
                              ),
                            ),
                          );
                        }),
                    SizedBox(height: 2.sh),

                    CustomText(
                      title: QualityAssurancePageText.QualityAssuranceBio3,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Brand Management
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Brand Management",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.brandManagementImage),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: BrandManagementPageText.brandManagementBio,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Testing Ande Analysis
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Testing & Analysis",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 20.sh,
                        width: double.maxFinite,
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
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: TestingAndAnalysisPageText.testingAndAnalysisBio1,
                      fontSize: 3.5.sw,
                    ),
                    SizedBox(height: 2.sh),
                    CustomText(
                      title: TestingAndAnalysisPageText.testingAndAnalysisBio2,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Third Party Inspection
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Third Party Inspection",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
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
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: ThirdPartyInispectionPageText
                          .thirdPartyInispactionBio,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Social Compliance
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Social Compliance",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.socialComplienceImage),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: SocialCompliencePageText.socialComplienceBio,
                      fontSize: 3.5.sw,
                    ),
                  ],
                ),
                SizedBox(height: 5.sh),

                //Logistics
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Logistics",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 40.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.logisticsImage),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: LogisticsPageText.logistisPageBio,
                      fontSize: 3.5.sw,
                    )
                  ],
                ),
                SizedBox(height: 5.sh),

                //Designing
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Designing",
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sw,
                        ),
                        SizedBox(
                          width: 2.sw,
                        ),
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: ColorManager.blueColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.sh),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 20.sh,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AllImages.designingImage),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.sh),
                    CustomText(
                      title: DesigningPageText.desiginingPageBio,
                      fontSize: 3.5.sw,
                    )
                  ],
                ),
                SizedBox(height: 15.sh),
              ],
            ),
          ),

          const Footer(),
        ],
      ),
    );
  }
}
