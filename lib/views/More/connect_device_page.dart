import 'package:flutter/material.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/More/Components/device_card.dart';

class ConnectToDevicePage extends StatelessWidget {
  const ConnectToDevicePage({super.key});

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
        title: const Text("Connect To Device"),
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
            const DeviceCard(
              color: orange,
              asset: iconComputerAsset,
              label: "Computer",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const DeviceCard(
              color: yellow,
              asset: iconTvAsset,
              label: "TV",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const DeviceCard(
              color: purble,
              asset: iconWifiAsset,
              label: "Wi-Fi Speakers",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const DeviceCard(
              color: green,
              asset: iconChromeCastAsset,
              label: "Chromecast",
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const DeviceCard(
              color: blue,
              asset: iconBluetoothAsset,
              label: "Bluetooth",
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
