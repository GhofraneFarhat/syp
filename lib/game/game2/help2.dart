import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'game2.dart';
import 'lvl2.dart';
import 'pause2/menu.dart';
import 'pause2/settings.dart';
var entryy;
OverlayEntry help(context) {

  double sizeHeight = MediaQuery.of(context).size.height;
  double sizeWidth = MediaQuery.of(context).size.width;
  bool notsound = false;

  entryy = OverlayEntry(
    opaque: false,
    maintainState: true,
    builder: (_) => Positioned(
      //left: 10,
      //bottom: 10,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 2,
          sigmaY: 2,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.transparent,
                    Colors.indigo,
                  ],

                ),
              ),
              height: sizeHeight*0.8,
              width: sizeWidth*0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0,0.9),
                    child: GestureDetector(
                      onTap:(){
                        is_on=false;
                        if(startt)stopwatch2.start();
                        start=startt;//initial value
                        dir=pred;
                        entryy?.remove();
                      },
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/fleche.png',
                          height: sizeHeight*0.05,
                        ),

                      ),
                    ),
                  ),

                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: sizeHeight*0.09,),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                height: sizeHeight*0.05,
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/person.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Healthy Member of the Community  ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'hallo',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                height: sizeHeight*0.05,
                                color: Colors.blue,
                                child: Image.asset(
                                  "assets/labs.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Vaccinated Member of the Community",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                height: sizeHeight*0.05,
                                color: Colors.yellow,
                                child: Image.asset(
                                  "assets/shield.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Velnerable Member of the Community",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                color: Colors.greenAccent,
                                child: Image.asset(
                                  "assets/fine.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Winner",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                color: Colors.orange,
                                child: Image.asset(
                                  "assets/worry.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Can Be Infected During the OUTBREAK",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                height: sizeHeight*0.05,
                                color: Colors.red,
                                child: Image.asset(
                                  "assets/virus.gif",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Infected Member of the Community",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeHeight*0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth*0.0005*0.1,),
                            Container(
                              height: sizeHeight*0.075,
                              child: MaterialButton(
                                onPressed: (){},
                                height: sizeHeight*0.05,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/dead.png",
                                ),
                                padding: EdgeInsets.all(1.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: sizeWidth*0.00005,),
                            Text(
                              "Dead Member of the Community",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'hallo',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    ),

  );
  return entryy;
}