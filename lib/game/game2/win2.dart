import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:ui' as ui;
import '../lvl.dart';
import 'game2.dart';
import 'lvl2.dart';
OverlayEntry getEntryy(context) {
  double sizeHeight = MediaQuery.of(context).size.height;
  double sizeWidth = MediaQuery.of(context).size.width;
  OverlayEntry? entry;
  entry = OverlayEntry(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: sizeWidth*0.3,
                  height: sizeHeight*0.6,
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  child: Column(
                    children: [
                      Image.asset("assets/congrats.gif",height: sizeHeight*0.45,),
                      Container(
                        height:sizeHeight*0.05 ,
                      ),
                      Row(
                        children: [
                          Flexible(flex:4,child: Container()),
                          Flexible(
                            flex: 4,
                            child: GestureDetector(
                                onTap: (){
                                  repeat2();
                                  entry?.remove();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Game2(),
                                    ),
                                  );

                                },
                                child: Image.asset("assets/repeat.png",height: sizeHeight*0.05,)
                            ),
                          ),
                          Flexible(flex:6,child: Container()),
                          Flexible(
                            flex: 4,
                            child: GestureDetector(
                              onTap: (){
                                audioCache.clearAll();
                                audioPlayer.stop();
                                repeat2();
                                entry?.remove();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Lvl(),
                                  ),
                                );

                              },
                              child: Image.asset("assets/homewin.png",height: sizeHeight*0.05,),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  return entry;
}
