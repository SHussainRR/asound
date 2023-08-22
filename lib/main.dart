import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Animal sounds')),
        body: ContainerPage(),
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  final AudioCache audioCache = AudioCache();
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth / 2 - 20; // Subtract 20 for spacing

    return

      Container(
      width: double.infinity, // Full width of the screen
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  assetsAudioPlayer.open(
                    Audio('assets/chickenSound2.mp3'), // Replace with your audio file path
                  );
                  print('Audio playing from Container 1');
                },
                child: Container(
                  width: containerWidth,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/chicken2.png', height: 100, width: 100,),
                        SizedBox(height: 10,),
                        Text("CHICKEN", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20), // Add spacing between containers
              GestureDetector(
                onTap: () {
                  // Handle click for Container 2
                  print('Container 2 clicked');
                },
                child: Container(
                  width: containerWidth,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Container 2')),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  assetsAudioPlayer.open(
                    Audio('assets/key.mp3'), // Replace with your audio file path
                  );
                  print('Audio playing from Container 1');
                },
                child: Container(
                  width: containerWidth,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/chicken.png'),
                        Text("CHICKEN")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20), // Add spacing between containers
              GestureDetector(
                onTap: () {
                  // Handle click for Container 2
                  print('Container 2 clicked');
                },
                child: Container(
                  width: containerWidth,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Container 2')),
                ),
              ),
            ],
          ),
          // ... (other code)
        ],
      ),
    );
  }
}
