import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/dot_containers.dart';

class SliderImg extends StatefulWidget {
  const SliderImg(
      {super.key,
      required this.carouselController,
      required this.onPageChanged});
  final CarouselSliderController carouselController;
  final void Function(int, CarouselPageChangedReason) onPageChanged;
  @override
  State<SliderImg> createState() => _SliderImgState();
}

class _SliderImgState extends State<SliderImg> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              sliderImageAsset,
              scale: 0.5,
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            aspectRatio: 1,
            viewportFraction: 1,
          ),
          carouselController: widget.carouselController,
        ),
        Positioned(
          top: 2 * kToolbarHeight,
          child: Padding(
            padding: const EdgeInsets.only(left: 19, right: 24),
            child: DotsContainers(
              currentIndex: currentIndex,
            ),
          ),
        )
      ],
    );
  }
}