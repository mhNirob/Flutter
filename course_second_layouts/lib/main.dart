import 'package:flutter/material.dart';

void main() => runApp(application());

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Container',
      home: new Scaffold(
        body: new Container(
          //color: Colors.orange,
          child: new Text("This is container"),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Colors.green,
          ),
          transform: new Matrix4.rotationZ(0.5),
        ),
      ),
    );
  }
}
