import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Events/Components/podcast_cats_tabs.dart';
import 'package:pod_mood/views/PodcastPlayer/Components/blured_img.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);
    return Scaffold(
      body: GradientBackground(
        child: ListView(
          children: [
            const EventBluredStack(),
            SizedBox(
              height: getProportionateScreenHeight(46),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Text(
                  "Cubicle Wars",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Expanded(
                    child: Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                  style: thisTheme.textTheme.labelSmall!.copyWith(fontSize: 11),
                )),
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(27),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Expanded(
                  child: SizedBox(
                    height: getProportionateScreenHeight(161),
                    width: getScreenWidth(1),
                    child: const EventsHorizontalView(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EventBluredStack extends StatelessWidget {
  const EventBluredStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        const BluredImg(
          asset: eventsBannerAsset,
        ),
        Positioned(
          top: getProportionateScreenHeight(11),
          child: SizedBox(
            width: getScreenWidth(1),
            child: Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                InkWell( 
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: binky,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(6),
                ),
                const Text(
                  "Events",
                  style: TextStyle(fontSize: 23),
                ),
                const Spacer(),
                const Icon(
                  Icons.search,
                  size: 28,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
