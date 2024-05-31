import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurCompliencesSection extends StatelessWidget {
  const OurCompliencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Container(
        height: 500,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Our Compliant',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.carouselController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider.builder(
                      itemCount: AllImages.complientsList.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Image.asset(
                        AllImages.complientsList[itemIndex],
                        width: 200,
                        height: 200,
                      ),
                      options: CarouselOptions(
                        height: 400,
                        viewportFraction: 0.2,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      carouselController: controller.carouselController,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.carouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
