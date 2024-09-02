import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Radio/components/broadcast_radio_stacked_img.dart';

class RadioBroadcast extends StatefulWidget {
  const RadioBroadcast({super.key});

  @override
  State<RadioBroadcast> createState() => _RadioBroadcastState();
}

class _RadioBroadcastState extends State<RadioBroadcast> {
  final AudioPlayer _player = AudioPlayer();
  bool loading = false;
  @override
  void initState() {
    _player.setReleaseMode(ReleaseMode.stop);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _player.dispose();
  }

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
        title: const Text("Radio Broadcast"),
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
        child: Column(
          children: <Widget>[
            const Spacer(),
            const BroadcastRadioStackedImg(),
            const Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: SvgPicture.asset(radioMeterAsset),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.skip_previous_outlined,
                    size: 40,
                    color: Colors.white,
                    // weight: 1,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(56),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: iconBackgroundColor,
                  ),
                  child: Builder(
                    builder: (context) {
                      switch (_player.state) {
                        case PlayerState.stopped:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : InkWell(
                                  onTap: () async {
                                    await _playSound();
                                    debugPrint(
                                        "${_player.state.name} >> state stopped");
                                  },
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                        case PlayerState.playing:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : InkWell(
                                  onTap: () async {
                                    await _stopSound();
                                    debugPrint(
                                        "${_player.state.name} >> state playing");
                                  },
                                  child: const Icon(
                                    Icons.pause,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                        case PlayerState.paused:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : InkWell(
                                  onTap: () async {
                                    await _resumeSound();

                                    debugPrint(
                                        "${_player.state.name} >> state paused");
                                  },
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                        case PlayerState.completed:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : InkWell(
                                  onTap: () async {
                                    await _playSound();

                                    debugPrint(
                                        "${_player.state.name} >> state completed");
                                  },
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                        case PlayerState.disposed:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : InkWell(
                                  onTap: () async {
                                    await _playSound();

                                    debugPrint(
                                        "${_player.state.name} >> state disposed");
                                  },
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                        default:
                          return loading
                              ? const CircularProgressIndicator.adaptive()
                              : Container();
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(56),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.skip_next_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  _resumeSound() async {
    await _player.resume();
    setState(() {});
  }

  _playSound() async {
    setState(() {
      loading = true;
    });
    // Replace this URL with the URL of the sound you want to play
    const url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
    await _player.play(UrlSource(url));
    setState(() {
      loading = false;
    });
  }

  _stopSound() async {
    await _player.stop();
    setState(() {});
  }
}
