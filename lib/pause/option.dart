import 'package:flutter/material.dart';
var heightt,widthh;
class Option {
  Icon icon;
  String title;
  String subtitle;
  Option({required this.icon, required this.title, required this.subtitle});
}
final options = [
  Option(
    icon: Icon(Icons.help, size: widthh*0.05,),
    title: 'Tuto',
    subtitle: 'If you need help ',
  ),
  Option(
    icon: Icon(Icons.info, size: widthh*0.05,),
    title: 'Game',
    subtitle: 'If you want to know more about our game',
  ),
];

