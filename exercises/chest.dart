
import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';

class Chest extends StatelessWidget {
  const Chest({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'The exercise performs 10 reps in 3 sets';


List<ChestsExercises> chestsExercices=[
  ChestsExercises(title: title, image: "assets/chest/1.gif"),
  ChestsExercises(title: title, image: "assets/chest/2.gif"),
  ChestsExercises(title: title, image: "assets/chest/3.gif"),
  ChestsExercises(title: title, image: "assets/chest/4.gif"),
  ChestsExercises(title: title, image: "assets/chest/5.gif"),
  ChestsExercises(title: title, image: "assets/chest/6.gif"),
  ChestsExercises(title: title, image: "assets/chest/7.gif"),
  ChestsExercises(title: title, image: "assets/chest/8.gif"),

];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: chestsExercices.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.65,
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  Text(title,style:const TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(chestsExercices[index].image,
                      fit: BoxFit.fill,),
                    ),
                  ),
                 const Divider(color: Colors.white,),
                ],
              ),
            ),
          );

      }),
    );
  }
}


// String title = 'The exercise performs 10 reps in 3 sets';
