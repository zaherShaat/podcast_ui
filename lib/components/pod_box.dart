import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';

class PodBox extends StatelessWidget {
  const PodBox({super.key, required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PodImg(assetName: assetName),
        SizedBox(height: getProportionateScreenHeight(9)),
        const Row(
          children: [
            Text(
              "THE JORDAN HARBING..",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(2)),
        const Row(
          children: [
            Text(
              "Celeste Headlee",
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}

class PodImg extends StatelessWidget {
  const PodImg({super.key, this.width, this.height, required this.assetName,  this. radius});

  final double? width, height,radius;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    // ClipRRect(
    //   borderRadius: BorderRadius.circular(5),
    //   child: Image.asset(
    //     podBoxImgAsset,
    //     fit: BoxFit.cover,
    //     // width: 124,
    //     height: 124,
    //   ),
    // )
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius??5),
      child: Image.asset(
        assetName,
        fit: BoxFit.cover,
        height: height != null
            ? getProportionateScreenHeight(height!)
            : getProportionateScreenHeight(124),
        width: width != null
            ? getProportionateScreenWidth(width!)
            : getProportionateScreenWidth(124),
      ),
    );
  }
}

class PodCard extends StatelessWidget {
  final bool favCard;

  const PodCard(
      {super.key,
      required this.onPressed,
      required this.assetName,
      this.favCard = false, this.imgHeight, this.imgWidth});

  final void Function() onPressed;
  final String assetName;
  final double? imgHeight, imgWidth;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
        child: Row(
          children: [
            PodImg(
              height: imgHeight ?? 48,
              width: imgWidth ?? 48,
              assetName: assetName,
            ),
            SizedBox(
              width: getProportionateScreenWidth(13),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Expeditiously with tip "T.I." Harris',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(3),
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("Greenwood Online Banking For Us By Us")),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.more_horiz),
            ),
            favCard ? Icon(Icons.favorite) : Container(),
          ],
        ),
      ),
    );
  }
}
