import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tuto.dart';

AudioPlayer BeginPlayer = AudioPlayer();
AudioCache BeginCache = AudioCache(fixedPlayer: BeginPlayer);
bool music = false;

class Tap extends StatelessWidget {
  const Tap({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tapping(title: 'tapping'),
    );
  }
}

class Tapping extends StatefulWidget {
  const Tapping({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Tapping> createState() => _Tapping();
}

class _Tapping extends State<Tapping> {
  @override
  Widget build(BuildContext context) {
    // automatic size
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    final style = TextStyle(
        fontSize: sizeWidth * 0.02,
        color: Colors.white,
        decoration: TextDecoration.none,
        letterSpacing: sizeWidth * 0.001);
    music = true;
    BeginCache.load("tapping.mp3");
    BeginCache.play("tapping.mp3");
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hey There !',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.center,
                  ),
                  TypewriterAnimatedText(
                    'Welcome Back ',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.center,
                  ),
                  TypewriterAnimatedText(
                    'this is SYP : SAVE YOUR PROGRESS',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.bounceIn,
                    textAlign: TextAlign.center,
                  ),
                  TypewriterAnimatedText(
                    'an educational game which aims to raise awareness',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.start,
                  ),
                  TypewriterAnimatedText(
                    'about the importance of vaccination against Covid-19 and the sanitary protocol',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.start,
                  ),
                  TypewriterAnimatedText(
                    'Now , let\'s dive into the tutorial !',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.start,
                  ),
                  TypewriterAnimatedText(
                    'Just Hit Next !',
                    textStyle: GoogleFonts.nunito(textStyle: style),
                    speed: Duration(milliseconds: 80),
                    cursor: "_",
                    curve: Curves.easeIn,
                    textAlign: TextAlign.start,
                  ),
                ],
                totalRepeatCount: 1,
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              child: Container(
                height: sizeHeight * 0.1,
                width: sizeWidth * 0.05,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/next.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              onTap: () {
                BeginPlayer.stop();
                BeginCache.load("gamemusic.mp3");
                BeginCache.loop("gamemusic.mp3");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tuto(),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}