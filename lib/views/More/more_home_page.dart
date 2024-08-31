import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/more_navigation_card.dart';

class MoreHomePage extends StatelessWidget {
  const MoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          onDoubleTap: () {},
          canRequestFocus: false,
          enableFeedback: false,
          child: const Icon(
            Icons.arrow_back,
            color: binky,
          ),
        ),
        title: const Text("More"),
        titleSpacing: 0,
        leadingWidth: getProportionateScreenWidth(35),
        actions: [
          const Icon(
            Icons.search,
            color: iconColor,
          ),
          SizedBox(
            width: getProportionateScreenWidth(19),
          ),
        ],
      ),
      body: GradientBackground(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            MoreNavigationCard(
              label: "Playback",
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Connect to device",
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Social",
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Music Quality",
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "About Us",
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
          ],
        ),
      ),
    );
  }
}
