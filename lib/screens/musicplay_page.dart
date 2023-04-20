import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayPage> createState() => _MusicPlayPageState();
}

class _MusicPlayPageState extends State<MusicPlayPage> {

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;


  @override
  void initState() {
    super.initState();

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    final url = await AudioCache(prefix: 'assets/').load("ketganqiz.mp3");
    audioPlayer.setSourceUrl(url.path);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://i.ytimg.com/vi/745KTqmeuXM/maxresdefault.jpg",
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 32),
            Text(
              "Do'stlarim",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await audioPlayer.seek(position);
                await audioPlayer.resume();
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatTime(position),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      formatTime(duration - position),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
            ),
            CircleAvatar(
              radius: 30,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                iconSize: 40,
                onPressed: () async {
                  if(isPlaying){
                    await audioPlayer.pause();
                  }else{
                    await audioPlayer.resume();
                  }
                },
              ),
            )
          ],
        ),
      ),

    );
  }
}

String formatTime(Duration duration){
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0)
      hours,
      minutes,
      seconds,
  ].join(":");
}
