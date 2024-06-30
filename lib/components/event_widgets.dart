import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class EventStackedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background image
        Container(
          width: getProportionateScreenWidth(181),
          height: getProportionateScreenHeight(133),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              image: AssetImage(eventBackAsset), // Replace with your image path
              fit: BoxFit.fill,
            ),
          ),
        ),
        // Overlay content
        Container(
          width: getProportionateScreenWidth(181),
          height: getProportionateScreenHeight(133),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.black.withOpacity(0.4),
          ),
          padding: const EdgeInsets.only(
            bottom: 9,
            // right: 11,
            left: 11,
          ),
          // Optional overlay to make text/buttons more readable
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Row(
                children: [
                  Text(
                    "Cosmetallic",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(4),
              ),
              const Row(
                children: [
                  Text("Lorem ipsum dolor sit"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
