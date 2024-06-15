import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Utils/All_Lists/all_lists.dart';

class OurProductSectionMobile extends StatelessWidget {
  const OurProductSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.sh,
      // color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text('Our Products',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              )),
          SizedBox(height: 5.sh,),
          Column(
            children: [
              Text('Mens',
                  style: GoogleFonts.rajdhani().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.redAccent,
                  )),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: CarouselSlider(
                    items: AllListsManager.mensJeansList
                        .map((e) => Image.asset(e, fit: BoxFit.cover))
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 16 / 16,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Text('Womens',
                  style: GoogleFonts.rajdhani().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.redAccent,
                  )),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: CarouselSlider(
                    items: AllListsManager.womensClothList
                        .map((e) => Image.asset(e, fit: BoxFit.cover))
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 16 / 16,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Text('Kids',
                  style: GoogleFonts.rajdhani().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.redAccent,
                  )),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: CarouselSlider(
                    items: AllListsManager.kidsClothList
                        .map((e) => Image.asset(e, fit: BoxFit.cover))
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 16 / 16,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
