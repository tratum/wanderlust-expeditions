import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final String imgUrl1;
  final String imgUrl2;
  final String imgUrl3;
  final double carouselHeight;

  const ImageSlider({
    Key? key,
    required this.imgUrl1,
    required this.imgUrl2,
    required this.imgUrl3,
    this.carouselHeight=390,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  final controller = CarouselController();
  late final List<String> urlImages;

  @override
  void initState() {
    super.initState();
    urlImages = [
      widget.imgUrl1,
      widget.imgUrl2,
      widget.imgUrl3,
    ];
  }

  void animateToSlide(int index) => controller.animateToPage(index);

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
          dotWidth: 10,
          activeDotColor: Color(0xFF40C4FF),
          dotColor: Color(0XFF000000),
          dotHeight: 8,
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  Widget buildImage(String urlImage, int index) => ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(urlImage, fit: BoxFit.cover));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: widget.carouselHeight,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                ),
            ),
            const SizedBox(height: 16),
            buildIndicator(),
          ],
        ),
      ),
    );
  }
}
