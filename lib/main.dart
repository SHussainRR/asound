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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Animal sounds'),
        backgroundColor: Colors.red,),
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

    return Container(
      width: double.infinity, // Full width of the screen
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/chickenSound2.mp3'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 1');
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
                          Image.asset('assets/Chicken.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("CHICKEN", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between containers
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/catMeow.mp3'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 1');
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
                          Image.asset('assets/Cat.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("CAT", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/lionSound.aac'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 3');
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
                          Image.asset('assets/Lion.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("LION", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between containers
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/elephantSound.mpeg'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 4');
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
                          Image.asset('assets/elephant.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("ELEPHANT", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/goat.mpeg'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 3');
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
                          Image.asset('assets/goat.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("GOAT", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between containers
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/dog.aac'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 4');
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
                          Image.asset('assets/dog.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("DOG", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/Camel.mpeg'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 3');
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
                          Image.asset('assets/Camel.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("CAMEL", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between containers
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/Duck.mpeg'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 4');
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
                          Image.asset('assets/Duck.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("DUCK", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/Horse.aac'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 3');
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
                          Image.asset('assets/Horse.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("Horse", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between containers
                GestureDetector(
                  onTap: () {
                    assetsAudioPlayer.open(
                      Audio('assets/Cow.aac'), // Replace with your audio file path
                    );
                    // print('Audio playing from Container 4');
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
                          Image.asset('assets/Cow.jpeg', height: 110, width: 110,),
                          const SizedBox(height: 10,),
                          const Text("COW", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ... (other code)
          ],
        ),
      )
    );
  }
}
