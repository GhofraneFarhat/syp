import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game/lvl.dart';
import 'pause/settings.dart';
import 'pause/menu.dart';
class Play extends StatelessWidget {
  const Play({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    final style = TextStyle(
        fontSize: sizeWidth*0.04, fontWeight: FontWeight.bold, color: Colors.white);
    return MaterialApp(
      title: 'SYP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
            ),
          ),
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,//
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lvl(),
                          )
                      );
                    },
                    child: Container(
                      height: sizeHeight*0.12,
                      width: sizeWidth*0.2,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(115, 170, 250, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(115, 170, 250, 0.3),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Colors.white10,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-4, -4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text("Play",
                            style: GoogleFonts.nunito(textStyle: style)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  if(!is_on)
                  {
                    is_on=true;
                    Overlay.of(context)?.insert(pause(context));
                  }
                },
                child: Image.asset(
                  "assets/2.png",
                  height: sizeHeight*0.12,
                  width: sizeWidth*0.07,
                ),
              ),
              bottom: sizeHeight*0.018,
              left: sizeWidth*0.01,
            )
          ]),
        ),
      ),
    );
  }
}
