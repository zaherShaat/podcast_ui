import 'package:flutter/material.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class LatestPlaysPage extends StatelessWidget {
  const LatestPlaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recently Played'),
        titleSpacing: 0,
        leadingWidth: getProportionateScreenWidth(35),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(19)),
            child: const InkWell(
              child: Icon(
                Icons.search,
                color: iconColor,
                size: 26,
              ),
            ),
          ),
        ],
        leading: const InkWell(
          child: Icon(
            Icons.arrow_back,
            color: binky,
          ),
        ),
      ),
      body: GradientBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Container(
                  height: getProportionateScreenHeight(124),
                  width: getProportionateScreenWidth(124),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      image: AssetImage(podBoxImgAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(5),
                        horizontal: getProportionateScreenWidth(7),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getProportionateScreenHeight(21),
                        width: getProportionateScreenWidth(21),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.favorite,
                          size: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              "I SURVIVED",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(6),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "What is it like to face death and make it out alive? Based on the groundbreaking A&E television series, I Survived documents harrowing stories of human endurance. In their own words, survivors recall how they overcame unbelievable circumstances that changed their lives forever.",
                              style: thisTheme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(21),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(19)),
                itemBuilder: (context, index) {
                  return PodCard(
                    onPressed: () {},
                    assetName: podBoxImgAsset,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                itemCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
