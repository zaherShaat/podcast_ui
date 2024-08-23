import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';

class DotsContainers extends StatefulWidget {
  const DotsContainers({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  State<DotsContainers> createState() => _DotsContainersState();
}

class _DotsContainersState extends State<DotsContainers> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      alignment: AlignmentDirectional.topStart,
      width: getScreenWidth(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(kToolbarHeight),
          ),
          Dot(
            selected: widget.currentIndex == 0,
          ),
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          Dot(
            selected: widget.currentIndex == 1,
          ),
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          Dot(
            selected: widget.currentIndex == 2,
          ),
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          Dot(
            selected: widget.currentIndex == 3,
          ),
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    super.key,
    required this.selected,
    this.height,
    this.width,
    this.noneBorder = false,
    this.selectedColor,
    this.unSelectedColor,
  });
  final bool selected;
  final double? height, width;
  final bool noneBorder;
  final Color? selectedColor, unSelectedColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? getProportionateScreenHeight(6),
      width: width ?? getProportionateScreenWidth(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected
            ? selectedColor ?? Colors.white
            : noneBorder
                ? unSelectedColor
                : Colors.transparent,
        border: noneBorder ? null : Border.all(color: Colors.white),
      ),
    );
  }
}
