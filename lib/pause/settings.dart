import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:ui' as ui;
import 'menu.dart';
import 'option.dart';
var entry;
OverlayEntry pause(context) {

  double sizeHeight = MediaQuery.of(context).size.height;
  double sizeWidth = MediaQuery.of(context).size.width;
  bool notsound = false;

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
          child: Center(
            child: Menu(),
          ),
        ),
      ),

    ),

  );
  return entry;
}