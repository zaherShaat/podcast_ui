import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class PopPodsImg extends StatelessWidget {
  const PopPodsImg({super.key});

  @override
  Widget build(BuildContext context) {
    final theTheme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            podBoxImgAsset,
            fit: BoxFit.cover,
            // width: 124,
            height: 124,
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(9)),
        Row(
          children: [
            Text(
              "THE JORDAN HARBING..",
              style: theTheme.textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              // style: TextStyle(
              //   fontWeight: FontWeight.bold,
              //   color: Colors.white,
              // ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(2)),
        Row(
          children: [
            Text(
              "Celeste Headlee",
              textAlign: TextAlign.start,
              style: theTheme.textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }
}
