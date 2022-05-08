import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game1/game1.dart';
import 'game1/lvl1.dart';
import 'game2/game2.dart';
import 'game2/lvl2.dart';
import 'game3/game3..dart';
import 'game3/lvl3.dart';

AudioPlayer audioPlayer = AudioPlayer();
AudioCache audioCache = AudioCache(fixedPlayer: audioPlayer);

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lvls',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lvl(),
    );
  }
}

class Lvl extends StatefulWidget {
  @override
  _LvlState createState() => _LvlState();
}

class _LvlState extends State<Lvl> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    final style = TextStyle(
        fontSize: sizeHeight * 0.2,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(115, 170, 250, 1),
        decoration: TextDecoration.none);

    final style1 = TextStyle(
        fontSize: sizeHeight * 0.05,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        decoration: TextDecoration.none);
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Levels',
                    style: GoogleFonts.orbitron(textStyle: style),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.1,
                  ),
                  InkWell(
                    child: Container(
                      height: sizeHeight * 0.1,
                      width: sizeWidth * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(115, 170, 250, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(115, 170, 250, 0.3),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(115, 170, 250, 0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(-4, -4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'level 1',
                          style: GoogleFonts.nunito(textStyle: style1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onTap: () {
                      to_sick1();
                      //audioCache.load("gaming.mp3");
                      //audioCache.loop("gaming.mp3");

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Game1(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: sizeHeight * 0.1,
                  ),
                  InkWell(
                    child: Container(
                        height: sizeHeight * 0.1,
                        width: sizeWidth * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(115, 170, 250, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(115, 170, 250, 0.3),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Color.fromRGBO(115, 170, 250, 0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'level 2',
                            style: GoogleFonts.nunito(textStyle: style1),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    onTap: () {
                      to_sick2();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Game2(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: sizeHeight * 0.1,
                  ),
                  InkWell(
                    child: Container(
                        height: sizeHeight * 0.1,
                        width: sizeWidth * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(115, 170, 250, 1),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(115, 170, 250, 0.3),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(4, 4),
                                blurStyle: BlurStyle.normal),
                            BoxShadow(
                              color: Color.fromRGBO(115, 170, 250, 0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'level 3',
                            style: GoogleFonts.nunito(textStyle: style1),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    onTap: () {
                      to_sick3();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Game3(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}