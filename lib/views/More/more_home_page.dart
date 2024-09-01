import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/more_navigation_card.dart';
import 'package:pod_mood/views/More/about_us_page.dart';
import 'package:pod_mood/views/More/connect_device_page.dart';
import 'package:pod_mood/views/More/music_quality_page.dart';
import 'package:pod_mood/views/More/playback_page.dart';
import 'package:pod_mood/views/More/social_page.dart';

class MoreHomePage extends StatelessWidget {
  const MoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
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
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const PlaybackPage(),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Connect to device",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const ConnectToDevicePage(),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Social",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SocialPage(),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Music Quality",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MusicQualityPage(),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "About Us",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AboutUsPage(),
                ),
              ),
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
