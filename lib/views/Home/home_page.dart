import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/pop_pods_image.dart';
import 'package:pod_mood/views/Home/components/slider_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      body: GradientBackground(
        child: Stack(
          fit: StackFit.expand,
          // clipBehavior: Clip.antiAlias,
          children: [
            SliderImg(
              carouselController: _carouselController,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
            ),
            PositionedDirectional(
              top: getScreenHeight(3),
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleTxt(
                    title: "Popular Broadcast",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(12),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(161),
                    width: getScreenWidth(1),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(19),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        const PopPodsImg(),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  const TitleTxt(
                    title: "Similar Broadcast",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(12),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: getScreenWidth(1),
                      child: ListView(
                        children: List.generate(
                          4,
                          (index) => Padding(
                            padding: EdgeInsets.only(
                              bottom: getProportionateScreenHeight(9),
                              left: getProportionateScreenWidth(19),
                              right: getProportionateScreenWidth(19),
                            ),
                            child: PodCard(
                              onPressed: () {},
                              assetName: podCardImg,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleTxt extends StatelessWidget {
  const TitleTxt({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(19),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
