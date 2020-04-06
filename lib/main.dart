import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Layout Example 0001'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[myLayoutWidget()],
        ),
      ),
    );
  }

  Widget myLayoutWidget() {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple[900],
        border: Border.all(),
        borderRadius: BorderRadius.all(
          Radius.circular(3.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.favorite, color: Colors.green),
              ),
              Text(
                'BEAMS',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
            child: Text(
              'Send programmable push notifications to iOS and Android devices',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'EXPLORE BEAMS',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
