//import 'dart:js';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';
import '../../Play.dart';
import '../lvl.dart';
import 'game3..dart';
Random random = new Random();
var pred;
void to_sick3(){
  for(int i=0;i<81;i++){
    if(List[i]==Colors.red)
      return;  }
  int first_sick=28+random.nextInt(25);
  while(first_sick%9==0||(first_sick-8)%9==0){first_sick=28+random.nextInt(25);}
  int second_sick=28+random.nextInt(25);
  while(second_sick%9==0||(
      second_sick-8)%9==0||
      first_sick==second_sick||
      first_sick==second_sick-1||
      first_sick==second_sick+1||
      first_sick==second_sick+9||
      first_sick==second_sick-9||
      first_sick==second_sick+10||
      first_sick==second_sick-10||
      first_sick==second_sick+8||
      first_sick==second_sick-8){second_sick=28+random.nextInt(25);}
  List[first_sick]=Colors.red;
  image[first_sick]="assets/virus.gif";
  List[second_sick]=Colors.red;
  image[second_sick]="assets/virus.gif";
}
var List=[
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white
];
var initList=[
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,
  Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,Colors.white,Colors.yellow,Colors.white,
  Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white
];
var image=[
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
];
var initimage=[
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
  "assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif","assets/person.gif","assets/shield.gif","assets/person.gif",
  "assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif","assets/person.gif",
];
var directions=["assets/start.png","assets/up.gif","assets/down.gif","assets/left.gif","assets/right.gif","assets/news.gif","assets/vaccin.gif","assets/pause.png"];
bool start=false;
Color Select_color(i){
  if(i==10||i==13||i==16||i==70||i==67||i==64)return Colors.yellow;
  if(i==38||i==42) return Colors.red;
  return Colors.white;
}
void choose(context){
  cur++;
  int b=1+random.nextInt(4);
  while(b==dir)b=1+random.nextInt(4);
  if(b==1){
    for(int i=9;i<81;i++){
      if(List[i]==Colors.red)if(List[i-9]!=Colors.blue&&List[i-9]!=Colors.black){
        if(List[i-9]==Colors.yellow){
          List[i-9]=Colors.black;
          image[i-9]="assets/dead.png";
        }
        else{
          List[i-9]=Colors.red;
          image[i-9]="assets/virus.gif";
        }
      }
    }
  }
  if(b==2){
    for(int i=71;i>=0;i--){
      if(List[i]==Colors.red)if(List[i+9]!=Colors.blue&&List[i+9]!=Colors.black){
        if(List[i+9]==Colors.yellow){
          List[i+9]=Colors.black;
          image[i+9]="assets/dead.png";
        }
        else{
          List[i+9]=Colors.red;
          image[i+9]="assets/virus.gif";
        }
      }
    }
  }
  if(b==3){
    for(int i=1;i<81;i++){
      if(i%9!=0){
        if(List[i]==Colors.red)if(List[i-1]!=Colors.blue&&List[i-1]!=Colors.black){
          if(List[i-1]==Colors.yellow){
            List[i-1]=Colors.black;
            image[i-1]="assets/dead.png";
          }
          else{
            List[i-1]=Colors.red;
            image[i-1]="assets/virus.gif";
          }
        }
      }
    }
  }
  if(b==4){
    for(int i=80;i>=0;i--){
      if(i!=8&&i!=17&&i!=26&&i!=35&&i!=44&&i!=53&&i!=62&&i!=71&&i!=80){
        if(List[i]==Colors.red)if(List[i+1]!=Colors.blue&&List[i+1]!=Colors.black){
          if(List[i+1]==Colors.yellow){
            List[i+1]=Colors.black;
            image[i+1]="assets/dead.png";
          }
          else{
            List[i+1]=Colors.red;
            image[i+1]="assets/virus.gif";
          }
        }
      }
    }
  }
  dir=b;
  dead=-1;
  for(int i=0;i<81;i++) {
    Color b = Colors.red,bb=Colors.black;
    if (i>8&&i % 9 != 0 && (i - 8) % 9 != 0){
      if ((List[i + 1] == b||List[i + 1] == bb) && (List[i - 1] == b||List[i - 1] == bb) && (List[i + 9] == b||List[i + 9] == bb) &&(List[i - 9] == b||List[i - 9] == bb)  && List[i] == b) {
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i>0&&i<8){
      if ((List[i + 1] == b||List[i + 1] == bb) && (List[i - 1] == b||List[i - 1] == bb) && (List[i + 9] == b||List[i + 9] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i!=0&& i%9==0&&i!=72){
      if ((List[i + 1] == b||List[i + 1] == bb)  && (List[i + 9] == b||List[i + 9] == bb) &&(List[i - 9] == b||List[i - 9] == bb)  && List[i] == b) {
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i>72&&i<80){
      if ((List[i + 1] == b||List[i + 1] == bb) && (List[i - 1] == b||List[i - 1] == bb) && (List[i - 9] == b||List[i - 9] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if((i - 8) % 9 == 0&&i!=8&&i!=80){
      if ((List[i + 9] == b||List[i + 9] == bb) && (List[i - 1] == b||List[i - 1] == bb) && (List[i - 9] == b||List[i - 9] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i==0){
      if ((List[i + 9] == b||List[i + 9] == bb) &&  (List[i + 1] == b||List[i + 1] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i==8){
      if ((List[i + 9] == b||List[i + 9] == bb) &&  (List[i - 1] == b||List[i - 1] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i==72){
      if ((List[i - 9] == b||List[i - 9] == bb) &&  (List[i + 1] == b||List[i + 1] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
    else if(i==80){
      if ((List[i - 9] == b||List[i - 9] == bb) &&  (List[i - 1] == b||List[i - 1] == bb)   && List[i] == b){
        List[i] = Colors.black;
        image[i] = "assets/dead.png";
      }
    }
  }
  for(int i=0;i<81;i++){
    if(List[i]==Colors.black)dead++;
  }
  if(dead>=0)for(int i=0;i<=min(dead,3);i++)deaths[i]=Colors.red;
  if(dead>=3)NO(context);


}
int cur=1;
bool sur=false;
void news(int index,context){
  if(sur==false){
    //nothing happening ....no orange
    if(cur%5!=0){
      inject(index, context);
    }
    // breaking news here
    else{
      surprise();
      choose_one=false;
      sur=true;
      cur++;
    }
  }
  // yofridh 3lih ywali mridh
  else {
    become_sick(index);
  }
}
bool choose_one=true;
// inject and test if red or blue
void inject(int index,context){
  if(stop==false){
    if(start==true){
      if(choose_one){
        if(List[index]==Colors.red&&test==0){
          List[index]=Colors.blue;
          image[index]="assets/labs.gif";
          choose(context);
          cur++;
        }
        else if(List[index]==Colors.white||List[index]==Colors.yellow){
          test++;
          List[index]=Colors.blue;
          image[index]="assets/labs.gif";
          if(test==3){
            test=0;
            choose(context);
          }
        }
      }
      else {
        if(List[index]==Colors.white||List[index]==Colors.yellow){
          choose_one=true;
          List[index]=Colors.blue;
          image[index]="assets/labs.gif";
          test=0;
          choose(context);
        }
      }
      win(context);
    }
  }
}
int dir=0;
int dead=-1;
var deaths=[Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue];
int test=0;
OverlayEntry getEntryy(context) {
  var size = MediaQuery.of(context).size;
  final style = TextStyle(
      fontSize: size.width*0.05,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(254, 168, 51, 1),
      decoration: TextDecoration.none);
  OverlayEntry? entry;
  entry =  OverlayEntry(
      builder: (context) => Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Center(
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: Colors.white.withOpacity(0.08)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(0.05)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Lottie.asset(
                          "assets/11864-crying.json",
                          fit: BoxFit.fill,
                          animate: true,
                          repeat: true,
                          height: size.height * 0.6 * 0.7,
                          width: size.width * 0.6 * 0.4,
                        ),
                        bottom: size.height * 0.7 * 0.15,
                        left: size.width * 0.4 * 0.2,
                      ),
                      Positioned(
                        bottom: size.height*0.01,
                        left: size.width*0.01,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Play(),
                                  ),
                                );
                                repeat3();
                                stopwatch3 = Stopwatch();
                                entry?.remove();
                              },
                              child: Image.asset("assets/3.png",height: size.height*0.08,),
                            )),
                      ),
                      Positioned(
                        bottom: size.height*0.03,
                        right: size.width*0.01,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                repeat3();
                                stopwatch3 = Stopwatch();
                                entry?.remove();
                              },
                              child: Image.asset(
                                "assets/refresh.png",
                                height: size.height*0.08,
                              ),
                            )),
                      ),

                      Positioned(
                        child: Text("You lost !",
                            style: GoogleFonts.bangers(textStyle: style)),
                        left: size.width * 0.4 * 0.32,
                        top: size.height * 0.7 * 0.1,
                      ),
                      Positioned(
                        child: Lottie.asset("assets/81756-rain.json",height: size.height * 0.9 * 0.7,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )));
  return entry;
}
//no
void NO(context){
  stopwatch3.stop();
  stop=true;
  Overlay.of(context)?.insert(getEntryy(context));
}
OverlayEntry getEntry(context) {
  var size = MediaQuery.of(context).size;
  final style = TextStyle(
      fontSize: size.width*0.05,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(254, 168, 51, 1),
      decoration: TextDecoration.none);
  OverlayEntry? entry;
  entry = OverlayEntry(
      builder: (context) => Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Center(
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: Colors.white.withOpacity(0.08)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(0.05)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Lottie.asset(
                          "assets/victory.json",
                          fit: BoxFit.fill,
                          animate: true,
                          repeat: false,
                          height: size.height * 0.9 * 0.7,
                          width: size.width * 0.9 * 0.4,
                        ),
                        bottom: size.height * 0.7 * 0.1,
                        left: size.width * 0.4 * 0.055,
                      ),
                      Positioned(
                          top: size.height * 0.7 * 0.1, //updated
                          left: size.width * 0.4 * 0.08, //updated
                          child: Image.asset("assets/fireworks.gif")),
                      Positioned(
                          top: size.height * 0.7 * 0.1, //updated
                          right: size.width * 0.4 * 0.08, //updated
                          child: Image.asset("assets/fireworks.gif")),
                      Positioned(
                          bottom: size.height * 0.7 * 0.02, //updated
                          right: size.width * 0.4 * 0.02, //updated
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Level(),
                                    ),
                                  );
                                  to_sick3();
                                  repeat3();
                                  stopwatch3 = Stopwatch();
                                  entry?.remove();
                                },
                                child: Image.asset(
                                  "assets/next.png",
                                  height: size.height * 0.7 * 0.1, //updated
                                ),
                              ))),
                      Positioned(
                        bottom: size.height * 0.7 * 0.02, //updated
                        left: size.width * 0.4 * 0.02, //updated
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Play(),
                                  ),
                                );
                                repeat3();
                                stopwatch3 = Stopwatch();
                                entry?.remove();
                              },
                              child: Image.asset(
                                "assets/3.png",
                                height: size.height * 0.7 * 0.1, //updated
                              ),
                            )),
                      ),
                      Positioned(
                        bottom: size.height * 0.7 * 0.02, //updated
                        left: size.width * 0.4 * 0.45, //updated
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            heightFactor: 11.1,
                            child: GestureDetector(
                              onTap: () {
                                repeat3();
                                stopwatch3 = Stopwatch();
                                entry?.remove();
                              },
                              child: Image.asset(
                                "assets/refresh.png",
                                height: size.height * 0.7 * 0.1, //updated
                              ),
                            )),
                      ),
                      Positioned(
                        child: Text("Victory!",
                            style: GoogleFonts.bangers(textStyle: style)),
                        left: size.width * 0.4 * 0.35, //updated
                        top: size.height * 0.7 * 0.1, //updated
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )));
  return entry;
}
//yes
void YES(context) {
  score();
  stopwatch3.stop();
  stop = true;
  for (int i = 0; i < 81; i++) {
    if (List[i] == Colors.white || List[i] == Colors.yellow) {
      List[i] = Colors.greenAccent;
      image[i] = "assets/fine.gif";
    }
  }
  Overlay.of(context)?.insert(getEntry(context));
}
void start_game(){
  if(start==false){
    start=true;
    int b=1+random.nextInt(4);
    while(b==dir)b=1+random.nextInt(4);
    dir=b;
    if(b==1){
      for(int i=9;i<81;i++){
        if(List[i]==Colors.red)if(List[i-9]!=Colors.blue&&List[i-9]!=Colors.black){
          if(List[i-9]==Colors.yellow){
            List[i-9]=Colors.black;
            image[i-9]="assets/dead.png";
          }
          else{
            List[i-9]=Colors.red;
            image[i-9]="assets/virus.gif";
          }
        }
      }
    }
    if(b==2){
      for(int i=71;i>=0;i--){
        if(List[i]==Colors.red)if(List[i+9]!=Colors.blue&&List[i+9]!=Colors.black){
          if(List[i+9]==Colors.yellow){
            List[i+9]=Colors.black;
            image[i+9]="assets/dead.png";
          }
          else{
            List[i+9]=Colors.red;
            image[i+9]="assets/virus.gif";
          }
        }
      }
    }
    if(b==3){
      for(int i=1;i<81;i++){
        if(i%9!=0){
          if(List[i]==Colors.red)if(List[i-1]!=Colors.blue&&List[i-1]!=Colors.black){
            if(List[i-1]==Colors.yellow){
              List[i-1]=Colors.black;
              image[i-1]="assets/dead.png";
            }
            else{
              List[i-1]=Colors.red;
              image[i-1]="assets/virus.gif";
            }
          }
        }
      }
    }
    if(b==4){
      for(int i=80;i>=0;i--){
        if(i!=8&&i!=17&&i!=26&&i!=35&&i!=44&&i!=53&&i!=62&&i!=71&&i!=80){
          if(List[i]==Colors.red)if(List[i+1]!=Colors.blue&&List[i+1]!=Colors.black){
            if(List[i+1]==Colors.yellow){
              List[i+1]=Colors.black;
              image[i+1]="assets/dead.png";
            }
            else{
              List[i+1]=Colors.red;
              image[i+1]="assets/virus.gif";
            }
          }
        }
      }
    }
  }
}
void win(context){
  int mouv=0;
  for(int b=1;b<=4;b++){
    if(b==1){
      for(int i=9;i<81;i++){
        if(List[i]==Colors.red)if(List[i-9]==Colors.white||List[i-9]==Colors.yellow)mouv++;
      }
    }
    if(b==2){
      for(int i=71;i>=0;i--){
        if(List[i]==Colors.red)if(List[i+9]==Colors.white||List[i+9]==Colors.yellow)mouv++;
      }
    }
    if(b==3){
      for(int i=1;i<81;i++){
        if(i%9!=0){
          if(List[i]==Colors.red)if(List[i-1]==Colors.white||List[i-1]==Colors.yellow)mouv++;
        }
      }
    }
    if(b==4){
      for(int i=80;i>=0;i--){
        if(i!=8&&i!=17&&i!=26&&i!=35&&i!=44&&i!=53&&i!=62&&i!=71&&i!=80){
          if(List[i]==Colors.red)if(List[i+1]==Colors.white||List[i+1]==Colors.yellow)mouv++;
        }
      }
    }
  }
  if(mouv==0)YES(context);
}
void surprise(){
  Color w=Colors.white,y=Colors.yellow,o=Colors.orange;
  dir=5;
  if(start){
    for(int i=0;i<81;i++){
      if(i==0){
        if(List[0]==w&&List[1]==w&&List[9]==w){List[0]=o;image[0]="assets/worry.gif";}
      }
      else if(i==8){
        if(List[i]==w&&List[7]==w&&List[17]==w){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if(i==72){
        if(List[i]==w&&List[63]==w&&List[73]==w){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if(i==80){
        if(List[i]==w&&List[79]==w&&List[71]==w){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if(i<8){
        if(List[i]==w&&List[i+1]==w&&List[i-1]==w&&(List[i+9]==w||List[i+9]==y)){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if(i>72){
        if(List[i]==w&&List[i+1]==w&&List[i-1]==w&&(List[i-9]==w||List[i-9]==y)){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if(i%9==0){
        if(List[i]==w&&List[i+9]==w&&List[i-9]==w&&(List[i+1]==w||List[i+1]==y)){List[i]=o;image[i]="assets/worry.gif";}
      }
      else if((i-8)%9==0){
        if(List[i]==w&&List[i+9]==w&&List[i-9]==w&&(List[i-1]==w||List[i-1]==y)){List[i]=o;image[i]="assets/worry.gif";}
      }
      else {
        if(List[i]==w&&(List[i+9]==w||List[i+9]==y)&&(List[i-9]==w||List[i-9]==y)&&(List[i+1]==w||List[i+1]==y)&&(List[i-1]==w||List[i-1]==y)){List[i]=o;image[i]="assets/worry.gif";}
      }
    }
  }
}
bool stop=false;
void become_sick(int index){
  if(List[index]==Colors.orange){
    List[index]=Colors.red;
    image[index]="assets/virus.gif";
    // image of vaccination someone
    dir=6;
    sur=false;
    for(int i=0;i<81;i++)if(List[i]==Colors.orange){List[i]=Colors.white;image[i]="assets/person.gif";}
  }
}
void repeat3(){
  for(int i=0;i<81;i++){
    List[i]=Colors.white;
    image[i]="assets/person.gif";
    deaths[i%6]=Colors.blue;
  }
  List[10]=Colors.yellow;
  image[10]="assets/shield.gif";
  List[13]=Colors.yellow;
  image[13]="assets/shield.gif";
  List[16]=Colors.yellow;
  image[16]="assets/shield.gif";
  List[64]=Colors.yellow;
  image[64]="assets/shield.gif";
  List[67]=Colors.yellow;
  image[67]="assets/shield.gif";
  List[70]=Colors.yellow;
  image[70]="assets/shield.gif";
  test=0;
  dead=-1;
  sur=false;cur=1;dir=0;
  start=false;
  stop^=true;
  to_sick3();
}
int score(){
  int compt=0;
  for(int i=0;i<81;i++){
    if(List[i]==Colors.greenAccent)compt++;
  }
  return compt;
}
// stopwatch

