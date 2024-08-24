import 'package:flutter/material.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/components/search_form_field.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({super.key});

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  @override
  Widget build(BuildContext context) {
    final theTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text("Search"),
        titleSpacing: 0,
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                const Expanded(
                  child: SearchFormField(
                    enabled: true,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(31)),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Text(
                  'Search result',
                  textAlign: TextAlign.start,
                  style: theTheme.textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: "HKGrotesk",
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(21)),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(19)),
                separatorBuilder: (context, index) => SizedBox(
                  height: getProportionateScreenHeight(12),
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return PodCard(
                    onPressed: () {},
                    assetName: podBoxImgAsset,
                    favCard: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
