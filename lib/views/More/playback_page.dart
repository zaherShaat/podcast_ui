import 'package:flutter/material.dart';
import 'package:pod_mood/components/main_switch_btn.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/more_navigation_card.dart';

class PlaybackPage extends StatefulWidget {
  const PlaybackPage({super.key});

  @override
  State<PlaybackPage> createState() => _PlaybackPageState();
}

class _PlaybackPageState extends State<PlaybackPage> {
  bool _gaplessVal = true;
  bool _canvasVal = false;
  bool _autoplayVal = true;
  bool _normalizevolumeVal = true;
  bool _showunplayableVal = false;
  bool _automixVal = false;

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
        title: const Text("Playback"),
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
              label: "Gapless",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _gaplessVal = value!;
                  });
                },
                gettenVal: _gaplessVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Automix",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _automixVal = value!;
                  });
                },
                gettenVal: _automixVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Show Unplayable Songs",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _showunplayableVal = value!;
                  });
                },
                gettenVal: _showunplayableVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Normalize Volume",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _normalizevolumeVal = value!;
                  });
                },
                gettenVal: _normalizevolumeVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Autoplay",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _autoplayVal = value!;
                  });
                },
                gettenVal: _autoplayVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            MoreNavigationCard(
              label: "Canvas",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _canvasVal = value!;
                  });
                },
                gettenVal: _canvasVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
          ],
        ),
      ),
    );
  }
}
