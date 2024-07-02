import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';

class Biceps extends StatelessWidget {
  const Biceps({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'The exercise performs 10 reps in 3 sets';

List<BicepsExercises> bicepsExercises=[
  BicepsExercises(title: title, image: "assets/Biceps/1.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/2.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/3.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/4.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/5.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/6.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/7.gif"),
  BicepsExercises(title: title, image: "assets/Biceps/8.gif"),

];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: bicepsExercises.length,
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
                      child: Image.asset(bicepsExercises[index].image,
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

