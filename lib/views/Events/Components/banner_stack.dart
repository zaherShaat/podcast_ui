import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class BannerStack extends StatelessWidget {
  const BannerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(139),
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      width: getScreenWidth(1),
      decoration: BoxDecoration(
        // color: binky,
        borderRadius: BorderRadius.circular(6),
        image: const DecorationImage(
          image: AssetImage(podBannerAsset),
          fit: BoxFit.cover,
        ),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text(
      //       "data",
      //       // textAlign: TextAlign.end,
      //     ),
      //   ],
      // ),
    );
  }
}
