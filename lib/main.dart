import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(

    title: 'Ask 8 Ball',
    home: Ball(),

  ));

}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int val = Random().nextInt(5)+1;

  void changeval(){

    setState(() {
      val = Random().nextInt(5)+1;
    });

  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Ask Me Anything',
        style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.lightBlueAccent,),
      
      body: Center(child: FlatButton(child: Image.asset('images/ball$val.png'),
        onPressed: (){changeval();
        },),),

    );
  }
}
