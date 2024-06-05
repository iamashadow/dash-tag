import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:dash_and_tag_web_site/utils/all_lists/all_lists.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurProductsSection extends StatelessWidget {
  const OurProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text('Our Products',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                          aspectRatio: 16 / 9,
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
                          aspectRatio: 16 / 9,
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
                          aspectRatio: 16 / 9,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
