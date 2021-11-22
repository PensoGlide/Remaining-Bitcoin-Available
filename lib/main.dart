import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';

// The main starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange ,
        appBar: AppBar(
          title: Text('I am Rich!'),
          backgroundColor: Colors.blueGrey[900],
        ),
        
        body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            NumberSlideAnimation(
            number: "1000000",
            duration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            textStyle: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white ,
              ),
            ),
            Image(
            image: AssetImage('images/Bitcoin-Logo.png'),
            width: 150,
            height: 150
            )
            ],
        ),
        ),
      ),
      ),
  );
}
