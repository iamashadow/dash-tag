import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderRight extends StatefulWidget {
  const HeaderRight({
    super.key,
  });

  @override
  _HeaderRightState createState() => _HeaderRightState();
}

class _HeaderRightState extends State<HeaderRight> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List links = [
      'https://images.unsplash.com/photo-1613252036716-e1efc9788e5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'https://images.unsplash.com/photo-1613252036716-e1efc9788e5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'https://images.unsplash.com/photo-1613252036716-e1efc9788e5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    ];

    return Expanded(
      child: Stack(
        children: [
          CarouselSlider(
            items: links
                .map((e) => ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(64),
                          bottomRight: Radius.circular(64)),
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              // height: Metrics.isDesktop(context)
              //     ? Metrics.height(context) * 0.5
              //     : Metrics.height(context),
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              // enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            carouselController: _controller,
          ),
          Positioned(
            right: 0,
            top: 170,
            child: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _controller.nextPage();
                  });
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
            top: 170,
            child: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _controller.previousPage();
                  });
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
