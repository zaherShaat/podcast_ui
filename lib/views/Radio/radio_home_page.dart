import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/views/Radio/components/txt_tab_btn.dart';
import 'package:pod_mood/views/Radio/components/pop_broadcast.dart';
import 'package:pod_mood/views/Radio/components/radio_genre.dart';

class RadioHomePage extends StatefulWidget {
  const RadioHomePage({super.key});

  @override
  State<RadioHomePage> createState() => _RadioHomePageState();
}

class _RadioHomePageState extends State<RadioHomePage>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  late PageController _pageController;
  final tabs = [const PopularBroadcast(), const RadioGenre()];

  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight * 2),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                TxtTabBtn(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                      _pageController.animateToPage(
                        _currentIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.bounceInOut,
                      );
                    });
                  },
                  label: "Popular Broadcast",
                  selected: _currentIndex == 0,
                ),
                TxtTabBtn(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                      _pageController.animateToPage(
                        _currentIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.bounceInOut,
                      );
                    });
                  },
                  label: "Radio Genre",
                  selected: _currentIndex == 1,
                ),
              ],
            ),
            Expanded(
              child: PageView(
                // physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
