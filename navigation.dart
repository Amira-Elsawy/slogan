import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:slogan_app/screens/calories.dart';
import 'package:slogan_app/screens/dialy_exercise.dart';
import 'package:slogan_app/screens/homeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> Pages =[
    Homescreen(),
    DialyExercise(),
    CaloriesCalc(),
  ];
  int index =0;
  late AudioPlayer audioPlayer;
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playStartupSound();
  }
  void playStartupSound() async {
    try {
      await audioPlayer.setAsset('assets/sounds/lovely.mp3');
      audioPlayer.play();
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label:'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.sports),
          label: 'Dialy Exercises'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),
          label: 'Calories Calculator')
        ],
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),),
        body: IndexedStack(
          index: index,
          children: Pages,),
    );
  }
}