import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemoApp extends StatelessWidget {
  final List<String> imgList = [
    'https://picsum.photos/id/237/800/400',
    'https://picsum.photos/id/238/800/400',
    'https://picsum.photos/id/239/800/400',
    'https://picsum.photos/id/240/800/400',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Slider Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Carousel Slider')),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayInterval: Duration(seconds: 3),
            ),
            items: imgList.map((item) => Container(
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(item, fit: BoxFit.cover, width: 1000),
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
