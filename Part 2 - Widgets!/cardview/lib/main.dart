import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text("Flutter Card Example"),
      ), // appBar
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new myCardLayout(theIcon: Icons.headset, theText: "Headset"),
            new myCardLayout(theIcon: Icons.mic, theText: "Mic"),
            new myCardLayout(theIcon: Icons.speaker, theText: "Speaker"),
            //this is not the list example, so when you add new cards, it won't be inside of the list.
          ],
        ), // column
      ), // Container
    ); // scaffold
  }
}

class myCardLayout extends StatelessWidget {
  // default constructor
  myCardLayout({this.theIcon, this.theText});

  // init variables
  final IconData theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Icon(theIcon,
                  size: 40.0, color: Colors.grey),
              title: new Text(
                theText,
                style: new TextStyle(fontSize: 20.0),
              ),
              subtitle:
                  const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  new FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
