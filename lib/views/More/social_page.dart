import 'package:flutter/material.dart';
import 'package:pod_mood/components/main_switch_btn.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/device_card.dart';
import 'package:pod_mood/views/More/Components/more_navigation_card.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  bool _privateSessionVal = true;
  bool _listeningActivityVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          onDoubleTap: () {},
          canRequestFocus: false,
          enableFeedback: false,
          child: const Icon(
            Icons.arrow_back,
            color: binky,
          ),
        ),
        title: const Text("Social"),
        titleSpacing: 0,
        leadingWidth: getProportionateScreenWidth(35),
        actions: [
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
        child: ListView(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            MoreNavigationCard(
              label: "Private Session",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _privateSessionVal = value!;
                  });
                },
                gettenVal: _privateSessionVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Listening Activity",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _listeningActivityVal = value!;
                  });
                },
                gettenVal: _listeningActivityVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            const DeviceCard(
              cardColor: cardColor,
              color: Colors.transparent,
              asset: facebookLogo,
              label: "Connect to Facebook",
              iconColor: blue,
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            const DeviceCard(
              cardColor: cardColor,
              color: Colors.transparent,
              asset: googleLogo,
              label: "Connect to Google",
              // iconColor: blue,
            ),
          ],
        ),
      ),
    );
  }
}
