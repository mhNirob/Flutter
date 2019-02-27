import 'package:flutter/material.dart';

void main(){
  runApp(
      //new Center(
      //  child: new Text('This is course first app', textDirection: TextDirection.ltr,),
      //)
    new applicationS()
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

class applicationS extends StatefulWidget {
  @override
  _applicationSState createState() => _applicationSState();
}

class _applicationSState extends State<applicationS> {

  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'initial : click this';
    super.initState();

  }

  void method(){
    setState(() {
      ttext = 'clicked ;)';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: (){method();}, child: new Text(ttext),),
        ),
      ),
    );
  }
}



