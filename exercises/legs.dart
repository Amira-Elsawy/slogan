import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';

class Legs extends StatelessWidget {
  const Legs({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'The exercise performs 10 reps in 3 sets';

List<LegsExercises> legsExercises=[
  LegsExercises(title: title, image: "assets/legs/1.gif"),
  LegsExercises(title: title, image: "assets/legs/2.gif"),
  LegsExercises(title: title, image: "assets/legs/3.gif"),
  LegsExercises(title: title, image: "assets/legs/4.gif"),
  LegsExercises(title: title, image: "assets/legs/5.gif"),
  LegsExercises(title: title, image: "assets/legs/6.gif"),
  LegsExercises(title: title, image: "assets/legs/7.gif"),
  LegsExercises(title: title, image: "assets/legs/8.gif"),

];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: legsExercises.length,
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
                      child: Image.asset(legsExercises[index].image,
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

