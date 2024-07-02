import 'package:flutter/material.dart';
import 'package:slogan_app/models/classes.dart';

class Back extends StatelessWidget {
  const Back({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'The exercise performs 10 reps in 3 sets';

List<BackExercises> backExercices=[
  BackExercises(title: title, image: "assets/Back/1.gif"),
  BackExercises(title: title, image: "assets/Back/2.gif"),
  BackExercises(title: title, image: "assets/Back/3.gif"),
  BackExercises(title: title, image: "assets/Back/4.gif"),
  BackExercises(title: title, image: "assets/Back/5.gif"),
  BackExercises(title: title, image: "assets/Back/6.gif"),

];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: backExercices.length,
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
                      child: Image.asset(backExercices[index].image,
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

