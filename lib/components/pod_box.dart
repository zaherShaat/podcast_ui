import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class PodBox extends StatelessWidget {
  const PodBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PodImg(),
        // SizedBox(height: getProportionateScreenHeight(9)),
        const Row(
          children: [
            Expanded(
              child: Text(
                "THE JORDAN HARBING..",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(2)),
        const Row(
          children: [
            Expanded(
              child: Text(
                "Celeste Headlee",
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PodImg extends StatelessWidget {
  const PodImg({super.key, this.width, this.height});
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 124,
      width: width ?? 124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: AssetImage(
            podBoxImgAsset,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PodCard extends StatelessWidget {
  const PodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          PodImg(
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: getProportionateScreenWidth(13),
          ),
        ],
      ),
    );
  }
}
