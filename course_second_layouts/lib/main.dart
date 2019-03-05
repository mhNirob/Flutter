import 'package:flutter/material.dart';

void main() => runApp(rowcolumn());


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

class rowcolumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column',
       home: new Scaffold(
        appBar: new AppBar(title: new Text('Row Column Appbar'),),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('This'),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('This'),
                new Text('is'),
                new Text('Column'),
              ],
            ),
            new Text('is'),
            new Text('row'),
          ],
        ),
      ),
    );
  }
}


