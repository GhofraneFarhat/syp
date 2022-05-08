import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../Play.dart';
import '../game2/pause2/settings.dart';
import '../game2/lvl2.dart';
import '../game2/pause2/menu.dart';
import '../lvl.dart';
// stopwatch

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;

  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');

  return "$minutes:$seconds";
}

//end
class Game2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lvl1',
      home: Game2_1(),
    );
  }
}

late Stopwatch stopwatch2;
late Timer _timer;

class Game2_1 extends StatefulWidget {
  @override
  _Game2_1State createState() => _Game2_1State();
}

class _Game2_1State extends State<Game2_1> {
  //stopwatch

  @override
  void initState() {
    super.initState();
    stopwatch2 = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop(a) {
    if (a.isRunning) {
      a.stop();
    } else {
      a.start();
    }

    setState(() {});
  }

  //end
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/1.png"),
                    fit: BoxFit.cover,
                  )),
            ),
            Align(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.045,
                  ),
                  Container(
                    height: sizeHeight*0.15,
                    width: sizeWidth*0.5,
                    child: IconButton(
                      icon: Image.asset(directions[dir]),
                      iconSize: sizeWidth * 0.5,
                      onPressed: () {
                        setState(
                              () {
                            stopwatch2.start();
                            start_game();
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.01,
                  ),
                  Container(
                    width: sizeWidth * 0.7,
                    height: sizeHeight * 0.75,
                    child: GridView.builder(
                      itemCount: 81,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 9,
                        mainAxisExtent: sizeHeight * 0.07,
                        crossAxisSpacing: sizeWidth * 0.001,
                        mainAxisSpacing: sizeHeight * 0.005,
                      ),
                      itemBuilder: (context, index) => MaterialButton(
                        onPressed: () {
                          setState(() {
                            news(index, context);
                          });
                        },
                        color: List[index],
                        child: Image.asset(image[index]),
                        padding: EdgeInsets.all(1.0),
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: sizeHeight * 0.065,
                ),
                Row(
                  // home
                  children: [
                    SizedBox(
                      width: sizeWidth * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lvl(),
                          ),
                        );
                        repeterr(context);
                      },
                      child: Container(
                        height: sizeHeight * 0.06,
                        width: sizeWidth * 0.06,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/left-arrow.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeHeight * 0.04,
                ),
                Row(
                  children: [
                    Align(
                      child: Row(
                        children: [
                          //SizedBox(width: sizeWidth*0.001,),
                          Container(
                            width: sizeWidth * 0.1,
                            height: sizeHeight * 0.7,
                            child: GridView.builder(
                              itemCount: 5,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisExtent: sizeHeight * 0.08,
                                  mainAxisSpacing: sizeHeight * 0.02),
                              itemBuilder: (context, index) => MaterialButton(
                                color: deaths[index],
                                onPressed: () {},
                                padding: EdgeInsets.all(1),
                                shape: CircleBorder(),
                                child: Center(
                                  child: Image.asset("assets/dead.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeHeight * 0.05,
                ),
                Row(
                  //settings
                  children: [
                    SizedBox(
                      width: sizeWidth * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (is_on == false) {
                          is_on = true; //cv
                          startt = start;
                          start = false;
                          stopwatch2.stop();
                          pred = dir;
                          dir = 7;
                          Overlay.of(context)?.insert(pause(context));
                        }
                      },
                      child: Container(
                        height: sizeHeight * 0.07,
                        width: sizeWidth * 0.04,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/2.png',
                            ),
                            //fit: BoxFit.fitWidth,
                          ),
                          //borderRadius: ,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  formatTime(stopwatch2.elapsedMilliseconds),
                  style: TextStyle(fontSize: sizeWidth * 0.04, color: Colors.white),
                )),
            Positioned(
                right: sizeWidth * 0.02,
                top: sizeHeight * 0.06,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Play(),
                      ),
                    );
                    repeterr(context);
                  },
                  child: Image.asset(
                    "assets/3.png",
                    height: sizeHeight * 0.08,
                    width: sizeWidth * 0.08,
                  ),
                ))
          ],
        ));
  }
}