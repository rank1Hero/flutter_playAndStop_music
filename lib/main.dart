
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    player.play(AssetSource("Metak.mp3"));
                  },
                  child: const Text(
                      "Play",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height:10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                    player.stop();
                  },
                  child: const Text(
                    "Stop",
                    style: TextStyle(
                        fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height:10),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                    player.pause();
                  },
                  child: const Text(
                    "Pause",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height:10),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                    player.resume();
                  },
                  child: const Text(
                    "Resume",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
