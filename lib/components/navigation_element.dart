import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});
  final int currentIndex;
  final void Function(int) onTap;
  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(
          backgroundColor: chly,
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: widget.currentIndex == 0,
                child: Container(
                  height: getProportionateScreenHeight(5),
                  width: getProportionateScreenWidth(24),
                  margin: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    color: binky,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
              ),
              RadioIcon(
                asset: homeIconAsset,
                color: widget.currentIndex == 0 ? binky : null,
              ),
            ],
          ),
          // icon: Icon(
          //   Icons.home_max,
          // ),
          label: "Home",
          tooltip: "Home",
        ),
        BottomNavigationBarItem(
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: widget.currentIndex == 1,
                child: Container(
                  height: getProportionateScreenHeight(5),
                  width: getProportionateScreenWidth(24),
                  decoration: const BoxDecoration(
                    color: binky,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
              ),
              RadioIcon(
                asset: radioIconAsset,
                color: widget.currentIndex == 1 ? binky : null,
              ),
            ],
          ),
          // icon: Icon(
          //   Icons.home_max,
          // ),
          label: "Radio Stations",
          tooltip: "Radio",
        ),
        BottomNavigationBarItem(
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: widget.currentIndex == 2,
                child: Container(
                  height: getProportionateScreenHeight(5),
                  width: getProportionateScreenWidth(24),
                  decoration: const BoxDecoration(
                    color: binky,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
              ),
              RadioIcon(
                asset: podcastsIconAsset,
                color: widget.currentIndex == 2 ? binky : null,
              ),
            ],
          ),
          label: "Podcasts",
          tooltip: "Podcasts",
        ),
        BottomNavigationBarItem(
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: widget.currentIndex == 3,
                child: Container(
                  height: getProportionateScreenHeight(5),
                  width: getProportionateScreenWidth(24),
                  decoration: const BoxDecoration(
                    color: binky,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
              ),
              RadioIcon(
                asset: eventsIconAsset,
                color: widget.currentIndex == 3 ? binky : null,
              ),
            ],
          ),
          label: "Events",
          tooltip: "Events",
        ),
        BottomNavigationBarItem(
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: widget.currentIndex == 4,
                child: Container(
                  height: getProportionateScreenHeight(5),
                  width: getProportionateScreenWidth(24),
                  decoration: const BoxDecoration(
                    color: binky,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
              ),
              RadioIcon(
                asset: profileIconAsset,
                color: widget.currentIndex == 4 ? binky : null,
              ),
            ],
          ),
          label: "Profile",
          tooltip: "Profile",
        ),
      ],
    );
  }
}

class RadioIcon extends StatelessWidget {
  final Color? color;
  final String asset;
  const RadioIcon({super.key, required this.color, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SvgPicture.asset(
        asset,
        color: color,
      ),
    );
  }
}
