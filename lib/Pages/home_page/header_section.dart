import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:dash_and_tag_web_site/utils/all_lists/all_lists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({super.key});
  final MainController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: CarouselSlider(
              items: AllListsManager.mainSliderImageList
                  .map((e) => Image.network(
                        e,
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ))
                  .toList(),
              options: CarouselOptions(
                // height: Metrics.isDesktop(context)
                //     ? Metrics.height(context) * 0.5
                //     : Metrics.height(context),
                viewportFraction: 0.999,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 400),
                autoPlayCurve: Curves.linearToEaseOut,
              ),
              carouselController: controller.carouselController,
            ),
          ),
          Positioned(
            right: 0,
            top: 375,
            child: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  controller.carouselController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 375,
            child: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  controller.carouselController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
