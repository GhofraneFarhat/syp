
import 'package:flutter/material.dart';
import '../../../store.dart';
import '../../../tap.dart';
import '../../lvl.dart';

import '../game1.dart';
import '../help1.dart';
import '../lvl1.dart';
import '../tuto1.dart';
import 'option.dart';
import 'settings.dart';
bool is_on=false;
bool startt=start;
void go_to_lvl(context){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Level(),
    ),
  );
  repeterr(context);
  entry?.remove();
}
void go_to_tuto(context){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Tuto(),
    ),
  );
  entry?.remove();
}
void repeterr(context){
  is_on=false;
  repeat();
  //repeat again to solve a glitch
  repeat();
  stopwatch=Stopwatch();
  entry?.remove();

}
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    heightt=sizeHeight;
    widthh=sizeWidth;
    return Center(
      child: SizedBox(
        child: Container(
          height: sizeHeight*0.7,
          width: sizeWidth*0.5,
          color: Color.fromRGBO(255, 255, 255, 0.3),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: (){
                    is_on=false;
                    if(startt)stopwatch.start();
                    start=startt;//initial value
                    dir=pred;
                    entry?.remove();
                  },
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/fleche.png',
                      height: sizeHeight*0.05,
                    ),

                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        sound=!sound;
                        if(sound==false){BeginPlayer.stop();music=false;}
                        if(sound==true&&music==false){
                          BeginCache.load(musics[ind_music]);
                          BeginCache.loop(musics[ind_music]);
                        }
                      });
                    },
                    child:  Icon(
                      sound?  Icons.volume_up:Icons.volume_off,
                      size: sizeHeight*0.05,
                      color: Colors.blueAccent,
                    ),
                  )
              ),
              Container(
                height: sizeHeight*0.6,
                child: ListView.builder(
                  itemCount: options.length + 2,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(height: sizeHeight*0.0005);
                    }


                    else if (index == options.length + 1) {
                      return SizedBox(height: sizeHeight*0.0001);
                    }
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(sizeWidth*0.01),
                      width: double.infinity,
                      height: sizeHeight*0.2,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(sizeWidth*0.05),
                        border: _selectedOption == index-1
                            ? Border.all(color: Colors.lightBlueAccent)
                            : null,
                      ),

                      child: ListTile(
                        leading: options[index - 1].icon,
                        title: Text(
                          options[index - 1].title,
                          style: TextStyle(
                            color: _selectedOption == index - 1
                                ? Colors.black
                                : Colors.red,
                          ),
                        ),
                        subtitle: Text(
                          options[index - 1].subtitle,
                          style: TextStyle(
                            color:
                            _selectedOption == index - 1 ? Colors.black : Colors.red,
                          ),
                        ),
                        selected: _selectedOption == index - 1,
                        onTap: () {
                          setState(() {
                            _selectedOption = index - 1;
                            if(index==1)repeterr(context);
                            else if (index==2){
                              go_to_tuto(context);
                              //entry
                            }
                            else if(index==3){
                              entry?.remove();
                              Overlay.of(context)?.insert(help(context));
                            }
                            else if(index==4){
                              go_to_lvl(context);
                            }
                          },
                          );
                        },
                      ),
                    );

                  },

                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
