import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
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

  _playSound() async {
    // Replace this URL with the URL of the sound you want to play
    const url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';

    await _player.play(UrlSource(url));
  }

  _stopSound() async {
    await _player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BluredImg(),
        ],
      ),
    );
  }
}
