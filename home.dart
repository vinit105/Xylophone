import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  play(int number){
    FlameAudio.bgm.initialize();
    FlameAudio.bgm.play("note1.waw");
  }
  Widget keyTone(Color color, int number){
    return Expanded(
      child: SafeArea(
        child: InkWell(
          onTap: (){
            play(number);
          },
          child: Container(
            width: double.infinity,
            color: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            keyTone(Colors.red,1),
            keyTone(Colors.orange,2),
            keyTone(Colors.yellow,3),
            keyTone(Colors.green,4),
            keyTone(Colors.blue,5),
            keyTone(Colors.indigo,6),
            keyTone(Colors.purple,7)
          ],
        ));
  }
}
