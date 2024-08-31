import 'package:flutter/material.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Events/Components/podcast_cats_tabs.dart';
import 'package:pod_mood/views/More/more_home_page.dart';
import 'package:pod_mood/views/Profile/Components/personal_circle_picture.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leadingWidth: 0,
        actions: [
          InkWell( 
            onTap: () => Navigator.of(context).push( MaterialPageRoute<void>(
      builder: (BuildContext context) => const MoreHomePage(),
    ),),
            child: const Icon(
              Icons.more_vert,
              color: iconColor,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(29),
          ),
          const Icon(
            Icons.search,
            color: iconColor,
          ),
          SizedBox(
            width: getProportionateScreenWidth(19),
          ),
        ],
      ),
      body: GradientBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            const PersonalCircledPicture(
              email: "gailforcewind2009@email.com",
              pictureAsset: profileIconAsset,
              username: "Gail Forcewind",
            ),
            SizedBox(
              height: getProportionateScreenHeight(31),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                const Text(
                  "Favourite Podcasts",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                Expanded(
                  child: SizedBox(
                      height: getProportionateScreenHeight(165),
                      child: const EventsHorizontalView()),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(19),
                ),
                const Text(
                  "Favourite Radio Stations",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(
                  right: getProportionateScreenWidth(19),
                  left: getProportionateScreenWidth(19),
                  bottom: getProportionateScreenHeight(8),
                ),
                itemBuilder: (context, index) {
                  return PodCard(
                    onPressed: () {},
                    assetName: podBoxImgAsset,
                    favCard: true,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: getProportionateScreenHeight(12),
                ),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
