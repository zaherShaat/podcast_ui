import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/terms_conditions_page.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
        title: const Text("Abot US"),
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
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(19),
              right: getProportionateScreenWidth(19),
              top: getProportionateScreenHeight(25)),
          children: [
            const TxtCard(
              startLabel: "Version",
              endLabel: "2.3.5",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            TxtCard(
              startLabel: "Terms & Conditions",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const TermsAndConditionsPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const TxtCard(
              startLabel: "Privacy Policy",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const TxtCard(
              startLabel: "Support",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const TxtCard(
              startLabel: "Logout",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
          ],
        ),
      ),
    );
  }
}

class TxtCard extends StatelessWidget {
  const TxtCard(
      {super.key, required this.startLabel, this.endLabel, this.onTap});
  final String startLabel;
  final String? endLabel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Card(
        color: chly,
        elevation: 0,
        // margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(19)),
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(17)),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(24),
              ),
              Text(startLabel),
              const Spacer(),
              endLabel != null
                  ? Text(
                      "Automatic",
                      style: thisTheme.textTheme.labelSmall!
                          .copyWith(fontSize: 11),
                    )
                  : Container(),
              SizedBox(
                width: getProportionateScreenWidth(12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
