import 'package:flutter/material.dart';
import 'package:slogan_app/exercises/back.dart';
import 'package:slogan_app/exercises/biceps.dart';
import 'package:slogan_app/exercises/chest.dart';
import 'package:slogan_app/exercises/legs.dart';
import 'package:slogan_app/exercises/shoulders.dart';
import 'package:slogan_app/models/classes.dart';
import 'package:slogan_app/models/drawer.dart';
import 'package:slogan_app/models/models.dart';


class DialyExercise extends StatefulWidget {
  const DialyExercise({super.key});

  @override
  State<DialyExercise> createState() => _DialyExerciseState();
}

 class _DialyExerciseState extends State<DialyExercise> {
  TextEditingController addExer = TextEditingController();
  TextEditingController addData = TextEditingController();

  List<Widget>  exercisesPages=[
  const Chest(),
   const Back(),
   const Biceps(),
   const Shoulders(),
   const Legs(),
  ];
  List<Exercise> exercise = [
    Exercise(
      image: 'assets/chest/main1.jpg',
      name: 'Chest Exercises',
      number: 8,
    ),
    Exercise(
      image: 'assets/Back/main.png',
      name: 'Back Exercises',
      number: 6,
    ),
    Exercise(
      image: 'assets/Biceps/main.jpg',
      name: 'Biceps Exercises',
      number: 8,
    ),
    Exercise(
        image: 'assets/shoulder/main.jpg',
        name: 'Shoulder Exercises',
        number: 7),
    Exercise(
      image: 'assets/legs/main.jpeg',
      name: 'Legs Exercises',
      number: 8,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer:const MyDrawer(),
        
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'SLOGAN',
          style: TextStyle(
              color: Colors.green,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'SpaceMono'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Add new exercise today',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SpaceMono',
                          fontStyle: FontStyle.italic),
                    ),
                    GestureDetector(
                      onTap: () {
                        dialogMethod(context);
                      },
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/add.gif'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: exercise.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>
                               exercisesPages[index]));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        exercise[index].image,
                                      ),
                                      fit: BoxFit.fill)),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:const BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16)),
                                  color: Colors.black.withOpacity(0.7)),
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    exercise[index].name,
                                    style:const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SpaceMono',
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    exercise[index].number.toString(),
                                    style:const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  dialogMethod(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title:const Text(
              'Enter the new exercise',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            content: SizedBox(
              height: 150,
              child: Column(
                children: [
                  TextField(
                    controller: addExer,
                    style:const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      labelText: 'Exercise',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: addData,
                    style:const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        labelText: 'Data'),
                  ),
                ],
              ),
            ),
            actions: [
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      exer.add(addExer.text);
                     data.add(addData.text);
                    });
                  },
                  child:const Text(
                    'Add',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          );
        });
  }
}
