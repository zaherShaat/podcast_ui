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
      height: height != null
          ? getProportionateScreenHeight(height!)
          : getProportionateScreenHeight(124),
      width: width != null
          ? getProportionateScreenWidth(width!)
          : getProportionateScreenWidth(124),
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
  const PodCard({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
        child: Row(
          children: [
            const PodImg(
              height: 48,
              width: 48,
            ),
            SizedBox(
              width: getProportionateScreenWidth(13),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'Expeditiously with tip "T.I." Harris',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(3),
                ),
                const Row(
                  children: [
                    Text("Greenwood Online Banking For Us By Us"),
                  ],
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
