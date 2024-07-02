import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: 
       drawer(),
    );
  }



  Drawer drawer() {
    return const Drawer(
      backgroundColor: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 85,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/easyLearn.jpg'),),
            ),
            SizedBox(height: 16,),
            Text('This app developed by EasyLearn Academy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'SpaceMono',
              fontStyle: FontStyle.italic
            ),)
          ],
        )
      ),
    );
  }
}