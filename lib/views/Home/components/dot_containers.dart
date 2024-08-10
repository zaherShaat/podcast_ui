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
  const Dot({super.key, required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(6),
      width: getProportionateScreenWidth(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? Colors.white : Colors.transparent,
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
