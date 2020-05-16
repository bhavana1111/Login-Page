import 'package:flutter/material.dart';
import 'package:webapp/Nav_bar/nav_bar.dart';
import 'package:webapp/landingpage/landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion here',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily:'Tinos'
          ),
 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end:Alignment.centerRight,
            colors: [Color.fromRGBO(195, 20, 50, 1.0),
            Color.fromRGBO(36, 11, 54, 1),
            ]
            )
        ) ,
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0,horizontal:40.0),
                child: LandingPage(),
              )
            ],
          ),
        ),
        )
    );
  }
}