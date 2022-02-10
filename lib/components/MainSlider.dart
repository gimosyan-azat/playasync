import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({Key? key}) : super(key: key);

  @override
  State<MainSlider> createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.asset(
                'images/banner.jpg',
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
