import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';

// The main starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange ,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () { /* Write listener code here */ },
            child: Icon(
              Icons.menu,  // add custom icons also
              size: 45.0,
            ),
          ),
        ),
        
        body: Center(
          child: Container(
          child: //Column(
            //mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically
            //crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally
            //children: [
            //Text('Bitcoin remaining to be mined:',
            //style: TextStyle(
            //  fontSize: 30.0,
            //  fontWeight: FontWeight.bold,
            //  fontStyle: FontStyle.italic,
            //  color: Colors.white ,
            //  ),
            //),
            Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NumberSlideAnimation(
              number: "1000000",
              duration: const Duration(seconds: 2),
              curve: Curves.bounceIn,
              textStyle: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white ,
                ),
              ),
              Image(
              image: AssetImage('images/Bitcoin-Logo.png'),
              width: 60,
              height: 60
            )
            ],
          ),
          //],
          //),
        ),
      ),
    ),
    ),
  );
}
