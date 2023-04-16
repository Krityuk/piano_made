import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const MyApp());

int num = 1;

void func(int n) {
  num = n;
  final assetsAudioPlayer = AssetsAudioPlayer();

  assetsAudioPlayer.open(
    Audio('assets/note$num.wav'),
  );
}

void funcSong() {
  final assetsAudioPlayer = AssetsAudioPlayer();

  assetsAudioPlayer.open(
    Audio('assets/Believer.mp3'),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:
            //  SafeArea(
            //   child:
            SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "This is piano",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(''),
                      ),
                      Text(
                        "Makrat JavaMan",
                        style: TextStyle(color: Colors.red),
                      )
                    ]),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      onPressed: () {
                        func(1);
                      },
                      child: const Text('Krityuk'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.blue),
                      onPressed: () {
                        func(2);
                      },
                      child: const Text('TWO'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.green),
                      onPressed: () {
                        func(3);
                      },
                      child: const Text('THREE'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.yellow),
                      onPressed: () {
                        func(4);
                      },
                      child: const Text('FOUR'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.grey),
                      onPressed: () {
                        func(5);
                      },
                      child: const Text('FIVE'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.greenAccent),
                      onPressed: () {
                        func(6);
                      },
                      child: const Text('SIX'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blueGrey),
                      onPressed: () {
                        func(7);
                      },
                      child: const Text('SEVEN'),
                    ),
                  ),
                ),
                Expanded(
                    child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black26),
                  onPressed: () {
                    funcSong();
                  },
                  child: const Text(
                    "Tap here",
                    style: TextStyle(color: Colors.green),
                  ),
                ))
              ],
            ),
          ),
        ),

        // ),
      ),
    );
  }
}
