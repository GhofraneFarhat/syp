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
    icon: Icon(
        Icons.restart_alt_rounded ,
        size: widthh*0.05,
    ),
    title: 'Restart',
    subtitle: 'If you want to play again ',
  ),
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
  Option(
    icon: Icon(Icons.first_page, size: widthh*0.05,),
    title: 'Quit',
    subtitle: 'If you want to leave the game',
  ),
];
