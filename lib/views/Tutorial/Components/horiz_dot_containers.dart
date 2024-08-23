import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Home/components/dot_containers.dart';

class HorizDotContainers extends StatefulWidget {
  const HorizDotContainers({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  State<HorizDotContainers> createState() => _HorizDotContainersState();
}

class _HorizDotContainersState extends State<HorizDotContainers> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      alignment: AlignmentDirectional.center,
      width: getScreenWidth(1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: getProportionateScreenHeight(kToolbarHeight),
          // ),
          Dot(
            selected: widget.currentIndex == 0,
            height: getProportionateScreenHeight(8),
            width: getProportionateScreenWidth(8),
            noneBorder: true,
            selectedColor: binky,
            unSelectedColor: gunmetal,
          ),
          SizedBox(
            width: getProportionateScreenHeight(6),
          ),
          Dot(
            selected: widget.currentIndex == 1,
            height: getProportionateScreenHeight(8),
            width: getProportionateScreenWidth(8),
            noneBorder: true,
            selectedColor: binky,
            unSelectedColor: gunmetal,
          ),
          SizedBox(
            width: getProportionateScreenHeight(6),
          ),
          Dot(
            height: getProportionateScreenHeight(8),
            width: getProportionateScreenWidth(8),
            selected: widget.currentIndex == 2,
            noneBorder: true,
            selectedColor: binky,
            unSelectedColor: gunmetal,
          ),
          SizedBox(
            width: getProportionateScreenHeight(6),
          ),
          Dot(
            height: getProportionateScreenHeight(8),
            width: getProportionateScreenWidth(8),
            selected: widget.currentIndex == 3,
            noneBorder: true,
            selectedColor: binky,
            unSelectedColor: gunmetal,
          ),
        ],
      ),
    );
  }
}
