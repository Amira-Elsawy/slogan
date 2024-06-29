import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slogan_app/models/taskCard.dart';

List<String> images = [
    'assets/images/Motivate 1.jpg',
    'assets/images/Motivate 2.jpg',
    'assets/images/Motivate 3.jpg',
    'assets/images/Motivate 4.jpg',
    'assets/images/Motivate 5.jpg',
  ];

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homescreen> {
  int currentIndex = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startImageSlider();
  }

  void startImageSlider() {
    timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("SLOGAN",style: TextStyle(color: Colors.greenAccent,fontSize: 20,
        fontFamily: "Space",
        ),
        
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          child: images.isNotEmpty
              ? Image.asset(
                  images[currentIndex],
                  fit: BoxFit.fill,
                )
              : Center(child: Text('No images to display')),
        ),
      
        Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green
          ),
          child: Column(
          children: [
            TaskCard(
              taskName: 'chest game',
              dateTime: '22/7 5:00',
            
            ),
            SizedBox(height: 8),
            TaskCard(
              taskName: 'back game',
              dateTime: '22/7 06:00',
             
            ),
          ],
        ),
      )
        ]
      )
    );
  }
}
      
