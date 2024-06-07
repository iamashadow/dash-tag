import 'dart:developer';

import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_hoodies_page/boys_hoodies_page.dart';
import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_polo_shirts/boys_polo_shirts.dart';
import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_shirts_and_pants_page/boys_shirts_and_pants_page.dart';
import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_shorts_and_cargo/boys_shorts_and_cargo.dart';
import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_sweaters_page/boys_sweaters_page.dart';
import 'package:dash_and_tag_web_site/Pages/boys_sector/boys_tshirts_page/boys_tshirts_page.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/contact_us_page.dart';
import 'package:dash_and_tag_web_site/Pages/our_clients_page/our_clients_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/brand_management/brand_management_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/designing_page/desigining_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/logistics_page/logistics_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/quality_assurance_page/quality_assurance_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/sosical_complience_page/social_complience_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/testing_and_analysis_page/testing_and_analysis_page.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/third_party_inspaction/third_party_inspaction_page.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../mission_vission_page/mission_vission_page.dart';
import '../boys_sector/boys_jeans_page/boys_jeans.dart';
import '../dash_and_tag_resources/dash_and_tag_resources.dart';
import '../mens_sector/hoodies_page/hoodies_page.dart';
import '../mens_sector/jackets_page/jackets_page.dart';
import '../mens_sector/men_jeans/mens_jeans.dart';
import '../mens_sector/polo_shirts/polo_shirts.dart';
import '../mens_sector/shorts_and_cargo_page/shorts_and_cargo_page.dart';
import '../mens_sector/sweaters_page/sweaters_page.dart';
import '../mens_sector/tshirt_page/tshirt_page.dart';
import '../services_sector/services/services.dart';
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
      height: 1200,
      width: double.maxFinite,
      color: Colors.teal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //About Us Sector
          CustomText(
            title: "About Us Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              //CRV Resources Page
              InkWell(
                onTap: () {
                  Get.to(() => const DashAndTagResources());
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
                  Get.to(() => const MissionVissionPage());
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
          const SizedBox(height: 20,),

          //Mens Sector
          CustomText(
            title: "Mens Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Means Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() =>  MeansJeans());
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
                  Get.to(() =>  TshirtPage());
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
                  Get.to(() =>  PoloShirts());
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
                  Get.to(() =>  PoloShirts());
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
                  Get.to(() =>  HoodiesPage());
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
                  Get.to(() =>  ShortsAndCargoPage());
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
                  Get.to(() =>  JacketsPage());
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
                  Get.to(() =>  SweatersPage());
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
          const SizedBox(height: 20,),

          //Women's Sector
          CustomText(
            title: "Women's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Womens Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() =>  WomenJeans());
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
                  Get.to(() =>  WomenTshirtPage());
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
                  Get.to(() =>  WomenPoloShirtPag());
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
                  Get.to(() =>  WomensShirtsAndPants());
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
                  Get.to(() =>  WomensHoodiesPage());
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
                  Get.to(() =>  WomensShortAndCargo());
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
                  Get.to(() =>  WomensSweatersPage());
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
          const SizedBox(height: 20,),


          //Boy's Sector
          CustomText(
            title: "Boy's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Boys Jeans Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysJeans());
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

              //Boys T-shirts Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysTshirtsPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's T-shirts",
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

              //Boys Polo Shirt Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysPoloShirts());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Polo Shirt",
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

              //Boys Shirts & Pants Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysShirtsAndPantsPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Shirts & Pants",
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

              //Boys Hoodies Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysHoodiesPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Hoodies",
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

              //Boys Shorts & Cargo Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysShortsAndCargo());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Shorts & Cargo",
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

              //Boys Sweaters Page
              InkWell(
                onTap: () {
                  Get.to(() =>  BoysSweatersPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Boy's Sweaters",
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
          const SizedBox(height: 20,),


          //Service's Sector
          CustomText(
            title: "Service's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Services Page
              InkWell(
                onTap: () {
                  Get.to(() =>  ServicesPages());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Services",
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
              //     Get.to(() =>  QualityAssurancePage());
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
              //     Get.to(() =>  BrandManagementPage());
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
              //     Get.to(() =>  TestingAndAnalysisPage());
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
              //     Get.to(() =>  ThirdPartyInspactionPage());
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
              //     Get.to(() =>  SocialCompliencePage());
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
              //     Get.to(() =>  LogisticsPage());
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
              //     Get.to(() =>  DesiginingPage());
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
          const SizedBox(height: 20,),

          //Our Clients Sector
          CustomText(
            title: "Client's Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Our Clients Page
              InkWell(
                onTap: () {
                  Get.to(() =>  OurClientsPage());
                },
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomText(
                      title: "Our Clients",
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
          const SizedBox(height: 20,),


          //Contact Us Sector
          CustomText(
            title: "Contact Us Sector",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              //Our Clients Page
              InkWell(
                onTap: () {
                  Get.to(() =>  ContactUsPage());
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



            ],
          ),
          const SizedBox(height: 20,),

        ],
      ),
    );
  }
}
