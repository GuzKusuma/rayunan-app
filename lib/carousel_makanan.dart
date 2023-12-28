import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//Slider Otomatis Makanan
//--------------------------------------------------------------
class CarouselMakanan extends StatelessWidget {
  const CarouselMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/gambar1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/gambar2.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/gambar3.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 130.0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.easeIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.7,
      ),
    );
  }
}
