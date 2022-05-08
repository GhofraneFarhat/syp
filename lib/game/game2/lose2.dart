import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'game2.dart';
import 'lvl2.dart';
OverlayEntry getEntry(context) {
  OverlayEntry? entry;
  entry = OverlayEntry(
    opaque: false,
    maintainState: true,
    builder: (_) => Positioned(
      left: 10,
      bottom: 10,
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
                  width: 300,
                  height: 300,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'You Lost',
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.white)),
                            onPressed: (){
                              repeat2();
                              entry?.remove();
                              //entry = null;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Game2(),
                                ),
                              );
                            },

                            child: Container(
                              color: Colors.transparent ,
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/home.png"),
                            )
                        )
                      ],
                    ),
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