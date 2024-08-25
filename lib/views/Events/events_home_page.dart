import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/pop_pods_image.dart';

class EventsHomePage extends StatelessWidget {
  const EventsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theTheme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(1.6 * kToolbarHeight),
        title: const Text("Events"),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.map_outlined,
              color: iconColor,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(25),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.search,
              color: iconColor,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(19),
          ),
        ],
      ),
      body: GradientBackground(
        child: ListView(
          children: [
            Row(
              children: <Widget>[
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Text(
                  "Popular Events",
                  style: theTheme.textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    debugPrint("statement");
                  },
                  child: Text(
                    "See all",
                    style: theTheme.textTheme.labelSmall!.copyWith(
                      color: binky,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
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
              height: getProportionateScreenHeight(23.5),
            ),
            //DJ banner
            SizedBox(
              height: getProportionateScreenHeight(23.5),
            ),
            //cats hrizontal tabs
            SizedBox(
              height: getProportionateScreenHeight(23.5),
            ),
            // the pods for every cat will be PODPOXIMG
            SizedBox(
              height: getProportionateScreenHeight(12),
            ),
          ],
        ),
      ),
    );
  }
}
