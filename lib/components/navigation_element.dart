import 'package:flutter/material.dart';
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
          icon: Column(
            children: [
              Visibility(
                visible: widget.currentIndex == 0,
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
              Icon(
                Icons.home_max,
              )
            ],
          ),
          // icon: Icon(
          //   Icons.home_max,
          // ),
          label: "Home",
          tooltip: "Home",
        ),
      ],
    );
  }
}
