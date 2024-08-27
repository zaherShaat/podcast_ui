import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Events/Components/banner_stack.dart';

class PopularBroadcast extends StatelessWidget {
  const PopularBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(19)),
      children: [
        const BannerStack(),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        for (int i = 0; i < 7; i++)
          Padding(
            padding: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
            child: PodCard(
              imgHeight: 50,
              imgWidth: 50,
              onPressed: () {},
              assetName: podBoxImgAsset,
              favCard: true,
            ),
          ),
      ],
    );
  }
}

class AdImgBanner extends StatelessWidget {
  const AdImgBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(89),
          width: getProportionateScreenWidth(1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(podBannerAsset),
          ),
        ),
      ],
    );
  }
}
