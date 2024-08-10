import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/dot_containers.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black_Russian,
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          SliderImg(
            carouselController: _carouselController,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 0),
            child: ListView(
              // shrinkWrap: false,
              children: [
                const SizedBox(
                  height: kToolbarHeight,
                ),
                DotsContainers(
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(96),
                ),
                const Row(
                  children: [
                    Text(
                      "Popular Broadcast",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
      // fit: StackFit.expand,

      // alignment: AlignmentDirectional.topCenter,
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return const GirlSliderImg();
          },
          options: CarouselOptions(
            onPageChanged: widget.onPageChanged,
            aspectRatio: 1,
            viewportFraction: 1,
          ),
          carouselController: widget.carouselController,
        ),
      ],
    );
  }
}

class GirlSliderImg extends StatelessWidget {
  const GirlSliderImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          sliderImageAsset,
          scale: 0.5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(72 + kToolbarHeight),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(43),
                ),
                const Text("Tabitha Nauser"),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(11)),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(43),
                ),
                const Text(
                  "Bulletproof",
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
