import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gymnasium Herzogenaurach',
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Architype'),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gymnasium Herzogenaurach"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/gymh.png",
                height: 100,
              ),
              Text(
                'Willkommen!\nBitte melde dich zuerst in der App an.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    OutlineButton(
                      child: Text("Los geht's!"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => SecondRoute()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2. Seite"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                'Zweite Seite 🙂',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
