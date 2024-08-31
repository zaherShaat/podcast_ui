import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class PersonalCircledPicture extends StatelessWidget {
  const PersonalCircledPicture(
      {super.key,
      required this.username,
      required this.email,
      required this.pictureAsset});
  final String username, email;
  final String pictureAsset;
  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);
    return Column(
      children: [
        Container(
          height: getProportionateScreenHeight(117),
          width: getProportionateScreenWidth(117),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: deepBinky,
              width: 5,
            ),
            image: const DecorationImage(
              image: AssetImage(
                profileImgAsset,
              ),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Text(
              username,
              textAlign: TextAlign.center,
            )),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(2),
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Text(
              email,
              style: thisTheme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ],
    );
  }
}
