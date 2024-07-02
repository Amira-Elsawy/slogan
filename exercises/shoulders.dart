import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';

class Shoulders extends StatelessWidget {
  const Shoulders({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'The exercise performs 10 reps in 3 sets';

List<ShoulderExercises> shoulderExercises=[
 ShoulderExercises(title: title, image: "assets/shoulder/1.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/2.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/3.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/4.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/5.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/6.gif"),
 ShoulderExercises(title: title, image: "assets/shoulder/7.gif"),
 

];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: shoulderExercises.length,
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
                      child: Image.asset(shoulderExercises[index].image,
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

