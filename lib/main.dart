import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            Positioned(
                top: 0,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                    child: Image(image: AssetImage('images/macen.jpeg'), height: _height * 0.4, width: _width* 0.6,))),
            Container(
              height: _height,
              width: _width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink[400].withOpacity(0.9), Colors.orange[800].withOpacity(0.8)])
        ),
        child: Column(
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
                      Text('Front End Development',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.8,
                        color: Colors.white
                      )),
                    ],
                  ),
                  SizedBox(height: 5),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: _height * 0.143),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: _height * 0.6482,
                  ),
                  Positioned(
                    top: -65,
                    right: 38,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Row(
                        children: <Widget>[
                          RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              AntDesign.dribbble,
                              color: Colors.white,
                              size: 20,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.pink,
                            padding: const EdgeInsets.all(10),
                          ),
                          SizedBox(width: _width * 0.02),
                          Material(
                            elevation: 4.0,
                            shape: CircleBorder(),
                            clipBehavior: Clip.hardEdge,
                            color: Colors.transparent,
                            child: Ink.image(
                              image: AssetImage('images/macen.jpeg'),
                              fit: BoxFit.cover,
                              width: 130,
                              height: 130,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: _width * 0.02),
                          RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              AntDesign.behance,
                              color: Colors.white,
                              size: 20,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.pink,
                            padding: const EdgeInsets.all(10),
                          ),
                        ],
                      ),
                        SizedBox(height: _height * 0.055),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('1755',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 3,),
                                Text('Apprecitions',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey
                                  ),),
                              ],
                            ),
                            SizedBox(width: _width * 0.07),
                            Column(
                              children: <Widget>[
                                Text('800',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 3),
                                Text('Followers',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey
                                  ),),
                              ],
                            ),
                            SizedBox(width: _width * 0.07),
                            Column(
                              children: <Widget>[
                                Text('231',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold
                                ),),
                                SizedBox(height: 3,),
                                Text('Following',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey
                                ),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: _height * 0.05),
                        Text('About Macen',
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                        )),
                        SizedBox(height: _height * 0.015),
                       Container(
                         height: _height * 0.2,
                         width: _width * 0.43,
                         child: Text('I\'m a self taught developer and have been coding since 2016. I enjoy making different UIs and designs that peak my interest. Let me know if you need something done!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                          ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 65.0),
                         child: Container(
  height: 60.0,
  child: RaisedButton(
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    elevation: 10.0,
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink[400].withOpacity(0.9), Colors.orange[800].withOpacity(0.8)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 220.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "Follow",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
          ),
        ),
      ),
    ),
  ),
),
                       ),
                     ],
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
            ],
          ),
        ),
            
         ],
      );
  }
}

