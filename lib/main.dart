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
            Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                child: Row(
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
                  SizedBox(height: _height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Flutter Developer',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.8,
                        color: Colors.white
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container( color: Colors.white, height: 10, width: 1, ),
                      ),
                      Text('Front End Developement',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.8,
                        color: Colors.white
                      )),
                    ],
                  ),
                  SizedBox(height: _height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(MaterialIcons.location_on,
                      size: 20,
                      color: Colors.white,),
                      Text('Wichita,USA',
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: _height * 0.15),
              Container(
                height: _height * 0.6078,
                color: Colors.white,
              ),
            ],
          ),
      );
  }
}

