import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/configs/themes.dart';
import 'package:pod_mood/views/Tutorial/Components/horiz_dot_containers.dart';
import 'package:pod_mood/views/navigation_page.dart';

class TutorialHome extends StatefulWidget {
  const TutorialHome({super.key});

  @override
  State<TutorialHome> createState() => _TutorialHomeState();
}

class _TutorialHomeState extends State<TutorialHome> {
  final _onBoardingWidgets = const [
    RadioTuneWidget(),
    RadioTuneWidget(),
    RadioTuneWidget(),
    RadioTuneWidget(),
  ];
  int currentIndex = 0;

  final _pageVewC = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const NavigationPage(),
                    ),
                  );
                },
                child: Text(
                  "Skip",
                  style: theTheme.textTheme.labelMedium!.copyWith(
                    color: binky,
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(21),
              ),
            ],
          ),
          Expanded(
            flex: 20,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageVewC,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: _onBoardingWidgets,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(19),
              ),
              Expanded(
                // flex: 3,
                child: InkWell(
                  onTap: () async {
                    await _pageVewC.animateToPage(
                      currentIndex - 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.bounceInOut,
                    );
                  },
                  child: Text(
                    "Previous",
                    style: theTheme.textTheme.labelMedium!.copyWith(
                      color: binky,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: HorizDotContainers(currentIndex: currentIndex),
              ),
              Expanded(
                // flex: 3,
                child: InkWell(
                  onTap: () async {
                    await _pageVewC.animateToPage(
                      currentIndex + 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.bounceInOut,
                    );
                  },
                  child: Text(
                    "Next",
                    style: theTheme.textTheme.labelMedium!.copyWith(
                      color: binky,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(19),
              ),
            ],
          ),
          const SizedBox(
            height: kToolbarHeight / 2,
          ),
        ],
      ),
    );
  }
}

class RadioTuneWidget extends StatelessWidget {
  const RadioTuneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: <Widget>[
        Image.asset(
          tutorialElementsPngAsset,
          fit: BoxFit.cover,
          height: getProportionateScreenHeight(530),
          width: getScreenWidth(1),
        ),
        Text(
          "Tune your Radio",
          style: theme.textTheme.displayLarge,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(31),
            ),
            Expanded(
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna",
                style: theme.textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(31),
            ),
          ],
        ),
      ],
    );
  }
}
