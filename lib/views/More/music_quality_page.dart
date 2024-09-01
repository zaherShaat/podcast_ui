import 'package:flutter/material.dart';
import 'package:pod_mood/components/main_switch_btn.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/more_navigation_card.dart';

class MusicQualityPage extends StatefulWidget {
  const MusicQualityPage({super.key});

  @override
  State<MusicQualityPage> createState() => _MusicQualityPageState();
}

class _MusicQualityPageState extends State<MusicQualityPage> {
  bool _cellularVal = false;

  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);

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
        title: const Text("Music Quality"),
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
            Card(
              color: chly,
              elevation: 0,
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(19)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(17)),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: getProportionateScreenWidth(24),
                    ),
                    const Text("Streaming"),
                    const Spacer(),
                    Text(
                      "Automatic",
                      style: thisTheme.textTheme.labelSmall!
                          .copyWith(fontSize: 11),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(6),
            ),
            MoreNavigationCard(
              label: "Download using cellular",
              leadingWidget: MainSwitchBtn(
                onChanged: (value) {
                  setState(() {
                    _cellularVal = value!;
                  });
                },
                gettenVal: _cellularVal,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(6),
            ),
            Card(
              color: chly,
              elevation: 0,
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(19)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(17)),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: getProportionateScreenWidth(24),
                    ),
                    const Text("Equalizer"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
