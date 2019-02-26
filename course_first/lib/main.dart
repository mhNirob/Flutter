import 'package:flutter/material.dart';

void main(){
  runApp(
    new application()
  );
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.red,
          child: new Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(30.0),

          ),
        ),
      ),
    );
  }
}



