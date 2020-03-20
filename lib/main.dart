import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;


    return Stack(
          children: <Widget>[
            Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink[400].withOpacity(0.9), Colors.orange[800].withOpacity(0.8)])
        ),),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Entypo.arrow_long_left,
                  size: 35,
                  color: Colors.white),
                  Icon(EvilIcons.gear,
                  size: 40,
                  color: Colors.white),
                ],
              ),
              SizedBox(height: _height * 0.01),
              Column(
                children: <Widget>[
                  Text('Macen Vargas',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                    color: Colors.white
                  )),
                  Row(
                    children: <Widget>[
                      Text('Flutter Developer',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 0.8,
                        color: Colors.white
                      )),
                      Container(
                        color: Colors.white,
                        width: 10,
                        height: 10,
                        child: VerticalDivider(color: Colors.white,),
                      ),
                      Text('Front End Developement',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 0.8,
                        color: Colors.white
                      )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
          ],
      );
  }
}

