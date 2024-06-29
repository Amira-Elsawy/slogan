import 'package:flutter/material.dart';
import 'package:slogan_app/models/models.dart';

class DialyExercise extends StatefulWidget {
  const DialyExercise({super.key});

  @override
  State<DialyExercise> createState() => _DialyExerciseState();
}

class _DialyExerciseState extends State<DialyExercise> {

  List <Exercise> exercise=[
    Exercise(image: 'assets/chest/main1.jpg',
     name: 'Chest Exercises',
      number: 8),

      Exercise(image: 'assets/Back/main.png',
       name: 'Back Exercises',
        number: 6),

        Exercise(image: 'assets/Biceps/main.jpg',
       name: 'Biceps Exercises',
        number: 8),

        Exercise(image: 'assets/shoulder/main.jpg',
       name: 'Shoulder Exercises',
        number: 7),

        Exercise(image: 'assets/legs/main.jpeg',
       name: 'Legs Exercises',
        number: 8),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('SLOGAN',
        style: TextStyle(
          color: Colors.green,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          
        ),),
      ),
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add new exercise today' ,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                  ),),
                  GestureDetector(
                    onTap: (){
                       showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return  AlertDialog(
                                    title: Text('Enter the new exercise'),
                                    content: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        labelText:'Exercise' 
                                      ),
                                    ),
                                    
                                  );});
                    }
                    ,
                    child:const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/add.gif'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ),
        ListView.builder(
          itemCount: exercise.length,
          itemBuilder: (context , index){
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/4,
                  child: Image.asset('assets/Back/main.png'),
                ),
                

              ],
            );
              
          })
        ],


      ),
    );
  }

 
}