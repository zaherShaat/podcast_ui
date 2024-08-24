import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/pod_box.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/PodcastPlayer/Components/blured_img.dart';

class PodcastPlayerHome extends StatefulWidget {
  const PodcastPlayerHome({super.key});

  @override
  State<PodcastPlayerHome> createState() => _PodcastPlayerHomeState();
}

class _PodcastPlayerHomeState extends State<PodcastPlayerHome> {
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
    final thisTheme = Theme.of(context);
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const BluredImg(),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(19)),
              child: Column(
                children: [
                  const SizedBox(height: kToolbarHeight),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.keyboard_backspace,
                          color: binky,
                          // weight: ,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(113),
                  ),
                  PodImg(
                    assetName: podBoxImgAsset,
                    height: getProportionateScreenHeight(190),
                    width: getProportionateScreenWidth(190),
                    radius: 10,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(31),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "The Jordan Harbinger show",
                        style: thisTheme.textTheme.displayLarge,
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(8),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Celeste Headlee",
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Row(
                    children: [
                      Text(
                        "41:08",
                        style: thisTheme.textTheme.labelSmall,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(11.7),
                      ),
                      SvgPicture.asset(podcastWaveAsset),
                      SizedBox(
                        width: getProportionateScreenWidth(11.7),
                      ),
                      const Icon(Icons.favorite),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(58),
                  ),
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
                ],
              ),
            ),
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
