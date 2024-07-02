import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';
import 'package:slogan_app/models/drawer.dart';
import 'package:slogan_app/models/models.dart';
import 'package:slogan_app/models/taskCard.dart';

List<String> images = [
    'assets/images/Motivate 1.jpg',
    'assets/images/Motivate 2.jpg',
    'assets/images/Motivate 3.jpg',
    'assets/images/Motivate 4.jpg',
    'assets/images/Motivate 5.jpg',
  ];
 List<Task> tasks = [
    Task(title: "chest game", time: "22/7 5:00", status: "Pending"),
    Task(title: "back game", time: "22/7 6:00", status: "Completed"),
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
    timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }
  @override
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
        title: const Text("SLOGAN",
        style: TextStyle(
              color: Colors.green,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'SpaceMono'),
        ),
        
      ),
      drawer:const MyDrawer(),
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
              : const Center(child: Text('No images to display')),
        ),
      
        
         Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green
            ),
            child: ListView.builder(
          itemBuilder: (context,int index){
            return TaskCard(
              taskName: exer[index],
              dateTime: data[index]);
          },
          itemCount: exer.length,
            )

                ),
          
        
        ] 
      )
      );
  }
}
      
