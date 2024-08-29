import 'package:flutter/material.dart';
import 'package:pod_mood/components/event_widgets.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/pop_pods_image.dart';

class PodcastCategoriesTabs extends StatefulWidget {
  const PodcastCategoriesTabs(
      {super.key, this.spaceful = false, this.viewsList});
  final bool spaceful;
  final List<Widget>? viewsList;
  @override
  State<PodcastCategoriesTabs> createState() => _PodcastCategoriesTabsState();
}

class _PodcastCategoriesTabsState extends State<PodcastCategoriesTabs> {
  final _pagesC = PageController();
  final _tabsStrings = [
    "All",
    "Art",
    "Concerts",
    "Events",
    "Festivals",
    "KidsFamily",
  ];

  int _currentIndex = 0;

  final List<Widget> _views = const [
    EventsHorizontalView(),
    EventsHorizontalView(),
    EventsHorizontalView(),
    EventsHorizontalView(),
    EventsHorizontalView(),
    EventsHorizontalView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(22),
          child: ListView.separated(
            itemCount: _tabsStrings.length,
            separatorBuilder: (context, index) => SizedBox(
              width: getProportionateScreenWidth(27),
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => TxtBtn(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                  _pagesC.animateToPage(
                    _currentIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.decelerate,
                  );
                });
              },
              txt: _tabsStrings[index],
              selected: index == _currentIndex,
            ),
          ),
        ),
        widget.spaceful ? const Spacer() : Container(),
        SizedBox(
          height: getProportionateScreenHeight(158),
          width: getScreenWidth(1),
          child: PageView(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            controller: _pagesC,
            children: widget.viewsList ?? _views,
          ),
        ),
      ],
    );
  }
}

class EventsHorizontalView extends StatelessWidget {
  const EventsHorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // SizedBox(
        //   width: getProportionateScreenWidth(19),
        // ),
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
    );
  }
}

class EventStackedHorizontalView extends StatelessWidget {
  const EventStackedHorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // SizedBox(
        //   width: getProportionateScreenWidth(19),
        // ),
        const EventStackedBox(),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        const EventStackedBox(),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        const EventStackedBox(),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        const EventStackedBox(),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        const EventStackedBox(),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        const EventStackedBox(),
        // SizedBox(
        //   width: getProportionateScreenWidth(15),
        // ),
      ],
    );
  }
}

class TxtBtn extends StatelessWidget {
  const TxtBtn(
      {super.key,
      required this.onTap,
      required this.txt,
      required this.selected});

  final void Function() onTap;
  final String txt;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    final theTheme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      canRequestFocus: false,
      enableFeedback: false,
      borderRadius: BorderRadius.circular(150),
      child: Text(
        txt,
        style: theTheme.textTheme.labelMedium!
            .copyWith(color: selected ? binky : null),
      ),
    );
  }
}
