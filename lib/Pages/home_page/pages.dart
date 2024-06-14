import 'package:dash_and_tag_web_site/Pages/contact_us_page/contact_us_root.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../boys_sector/boys_jeans_page/boys_jeans.dart';
import '../dash_and_tag_resources/view/desktop/dash_and_tag_resources.dart';
import '../mens_sector/hoodies_page/hoodies_page.dart';
import '../mens_sector/jackets_page/jackets_page.dart';
import '../mens_sector/men_jeans/mens_jeans.dart';
import '../mens_sector/polo_shirts/polo_shirts.dart';
import '../mens_sector/shorts_and_cargo_page/shorts_and_cargo_page.dart';
import '../mens_sector/sweaters_page/sweaters_page.dart';
import '../mens_sector/tshirt_page/tshirt_page.dart';
import '../mission_vission_page/view/desktop/mission_vission_desktop_page.dart';
import '../services_sector/view/desktop/services_page_desktop.dart';
import '../womens_sector/women_jeans/women_jeans.dart';
import '../womens_sector/women_polo_shirt_page/women_polo_shirt_page.dart';
import '../womens_sector/women_t-shirt_page/womens_t-shirt_page.dart';
import '../womens_sector/womens_hoodies_page/womens_hoodies_page.dart';
import '../womens_sector/womens_shirts_and_pants/womens_shirts_and_pants.dart';
import '../womens_sector/womens_shorts_and_cargo/womens_short_and_cargo.dart';
import '../womens_sector/womens_sweaters_page/womens_sweaters_page.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //About Us Sector
          CustomText(
            title: "About Us Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //CRV Resources Page
              InkWell(
                onTap: () {
                  Get.to(() => DashAndTagResourcesDesktop());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Dash & Tag Resources",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Mission Vission Page
              InkWell(
                onTap: () {
                  Get.to(() => const MissionVissionPageDesktop());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Mission & Vission",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Mens Sector
          CustomText(
            title: "Mens Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //Means Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() => MeansJeans());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Men's Jeans",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //T-shirt Page
              InkWell(
                onTap: () {
                  Get.to(() => TshirtPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "T-Shirt",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Polo Shirt Page
              InkWell(
                onTap: () {
                  Get.to(() => PoloShirts());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Polo Shirt",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Shirt's & Pants Page
              InkWell(
                onTap: () {
                  Get.to(() => PoloShirts());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Shirt's & Pants",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Hoodies Page
              InkWell(
                onTap: () {
                  Get.to(() => HoodiesPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Hoodies",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Shorts and Cargo Page
              InkWell(
                onTap: () {
                  Get.to(() => ShortsAndCargoPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Short's And Cargo",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Jackets Page
              InkWell(
                onTap: () {
                  Get.to(() => JacketsPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Jackets",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Sweaters Page
              InkWell(
                onTap: () {
                  Get.to(() => SweatersPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Sweaters",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Women's Sector
          CustomText(
            title: "Women's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //Womens Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() => WomenJeans());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Women's Jeans",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Womens T-shirt Page
              InkWell(
                onTap: () {
                  Get.to(() => WomenTshirtPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "T-shirt",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //WomenPolo Shirt Page
              InkWell(
                onTap: () {
                  Get.to(() => WomenPoloShirtPag());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Women Polo Shirt",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Women Shirt's & Pants Page
              InkWell(
                onTap: () {
                  Get.to(() => WomensShirtsAndPants());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Shirt's & Pants",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Women Hoodies Page
              InkWell(
                onTap: () {
                  Get.to(() => WomensHoodiesPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Hoodies",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Shorts and Cargo Page
              InkWell(
                onTap: () {
                  Get.to(() => WomensShortAndCargo());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Short's And Cargo",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Sweaters Page
              InkWell(
                onTap: () {
                  Get.to(() => WomensSweatersPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Sweaters",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Boy's Sector
          CustomText(
            title: "Boy's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //Boys Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() => BoysJeans());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Jeans",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Service's Sector
          CustomText(
            title: "Service's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //Services Page
              InkWell(
                onTap: () {
                  Get.to(() => ServicesPagesDesktop());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Merchandise Sourcing",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              // //Quality Assurance Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => QualityAssurancePage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Quality Assurance",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Brand Management Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => BrandManagementPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Brand Management",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Testing And Analysis Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => TestingAndAnalysisPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Testing And Analysis",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Third Party Inspection Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => ThirdPartyInspactionPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Third Party Inspection",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Social Compliance Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => SocialCompliencePage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Social Compliance",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Logistics Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => LogisticsPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Logistics",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Designing Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => DesiginingPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Designing",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),


          //ContactUs Sector
          CustomText(
            title: "Contact Us",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //Services Page
              InkWell(
                onTap: () {
                  Get.to(() => ContactUsRoot());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Contact Us",
                      letterSpacing: 2,
                      fontColor: Colors.white,
                      fontSize: 20,
                      fontFamily: "Rajdhani",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              // //Quality Assurance Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => QualityAssurancePage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Quality Assurance",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Brand Management Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => BrandManagementPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Brand Management",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Testing And Analysis Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => TestingAndAnalysisPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Testing And Analysis",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Third Party Inspection Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => ThirdPartyInspactionPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Third Party Inspection",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Social Compliance Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => SocialCompliencePage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Social Compliance",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Logistics Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => LogisticsPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Logistics",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              //
              // //Designing Page
              // InkWell(
              //   onTap: () {
              //     Get.to(() => DesiginingPage());
              //   },
              //   child: Card(
              //     color: Colors.blue,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: CustomText(
              //         title: "Designing",
              //         letterSpacing: 2,
              //         fontColor: Colors.white,
              //         fontSize: 20,
              //         fontFamily: "Rajdhani",
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
