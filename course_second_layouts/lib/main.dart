import 'package:flutter/material.dart';

void main() => runApp(listWidgetArray());


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


class listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic List Widget',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('App bar Basic list view'),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('tile 1'),
              trailing: new Icon(Icons.list),
            ),
            new ListTile(
              title: new Text('tile 2'),
              trailing: new Icon(Icons.list),
            ),
            new ListTile(
              title: new Text('tile 3'),
              trailing: new Icon(Icons.list),
            ),
          ],
        ),
      ),
    );
  }
}


class listWidgetArray extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<listWidgetArray> {

  List<int> items = new List();
  List<int> items2 = new List();

  @override
  void initState() {
    // TODO: implement initState
    for(int i=0;i<20;i++){
      items2.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Array list',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Array list appbar'),),
        body: new ListView.builder(
          itemCount: items2.length,
          itemBuilder: (BuildContext context, int index){
            return new ListTile(
              title: new Text('title no : $index'),
              trailing: new Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}




