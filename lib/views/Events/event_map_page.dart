import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/views/Events/Components/events_map.dart';
import 'package:pod_mood/views/Events/Components/podcast_cats_tabs.dart';

class EventsMapPage extends StatefulWidget {
  const EventsMapPage({super.key});

  @override
  State<EventsMapPage> createState() => _EventsMapPageState();
}

class _EventsMapPageState extends State<EventsMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          children: [
            const EventsMap(),
            Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(kToolbarHeight),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(19),
                    ),
                    const Text(
                      "Events",
                      style: TextStyle(fontSize: 23),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.menu),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(24),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(19),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(32),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(19),
                      ),
                      Expanded(
                        child: PodcastCategoriesTabs(
                          spaceful: true,
                          viewsList: List.generate(
                              6, (index) => const EventStackedHorizontalView()),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(19),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
