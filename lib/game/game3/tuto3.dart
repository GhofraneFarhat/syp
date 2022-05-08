
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

import '../../store.dart';
import 'game3..dart';
import 'pause3/settings.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
class Tuto extends StatefulWidget {
  const Tuto({Key? key}) : super(key: key);

  @override
  State<Tuto> createState() => _TutoState();
}

class _TutoState extends State<Tuto> {
  late Material materialButton;
  late int index;
  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }
  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,

        onTap: () {
          Overlay.of(context)?.insert(pause(context));
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Game3(),
              )
          );
        },
        child: Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Skip',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }
  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if(index<=7){
            index++;
            setIndex!(index);
          }
          else if(index==8){
            Overlay.of(context)?.insert(pause(context));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Game3(),
                )
            );
          }
        },
        child:  Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Next',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    final style = TextStyle(
        fontSize: sizeWidth * 0.01,
        color: Colors.white,
        decoration: TextDecoration.none,
        letterSpacing: sizeWidth * 0.001);
    final onboardingPagesList = [
      PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgrounds[ind_background]),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.15,
                  ),
                  Image.asset(
                    //image
                    'assets/tutoup.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    // first sized box
                    height: sizeHeight * 0.05,
                  ),
                  SizedBox(
                    //second sized box *
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'the Game starts with certain sick individuals(colored red) on the 9x9 grid',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                        TypewriterAnimatedText(
                          'When the arrow facing up appears on the screen it means that the direction in which the disease is spreading is up.',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                        TypewriterAnimatedText(
                          'On to the next rule!',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ),
                  SizedBox(
                    //3d sized box
                    height: sizeHeight * 0.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    //first sized box
                    height: sizeHeight * 0.10,
                  ),
                  Image.asset(
                    //image
                    'assets/tutodown.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    //3d sized box
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'When an arrow facing down appears on the screen, it means that the disease is spreading to the down individuals',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),

                  SizedBox(
                    //third sized box
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    //first sized box
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    //image
                    'assets/tutoleft.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    //second sized box *
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Watch Out! the virus is spreading the left in this one ! On to the next rule.',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),
                  SizedBox(
                    //third sized box
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    //first sized box
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    //image
                    'assets/tutoright.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    //second sized box *
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'the arrow is now facing right, it means that the disease is infecting the people on the right! on to the next rule',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),

                  SizedBox(
                    //third sized box
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    //first sized box
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    //image
                    'assets/tutodeath1.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    //second sized box
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'An infected member of the community surronded by sick people on all the sides is bound to die(it turns black).. So watch out !',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),

                  SizedBox(
                    //third sized box
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    //first sized box
                    height: sizeHeight * 0.1,
                  ),

                  Image.asset(
                    //image
                    'assets/tutodeath2.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'When a vulnerable member of the community(colored yellow) gets infected dies immediatly. So be careful!',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),
                  SizedBox(
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    'assets/tutovaccin.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Your mission is to contain the disease that is spreading in different directions in the community, you are able to do that by vaccinating a certain of individuals.All you have to do is click and vaccinate! Off you Go save the world !',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),
                  SizedBox(
                    height: sizeHeight,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    'assets/tutovaccin2.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Your mission is to contain the disease that is spreading in different directions in the community, you are able to do that by vaccinating a certain of individuals.',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                        TypewriterAnimatedText(
                          'All you have to do is click and vaccinate! Off you Go save the world !',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),

                  SizedBox(
                    height: sizeHeight * 0.5,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.05,
                  ),
                  Image.asset(
                    'assets/tutonew.png',
                    height: sizeHeight * 0.6,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.2,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'During the Covid-19 Outbreak, you are required to to infect a person. Now Good look Saving Your Community !',
                          speed: Duration(milliseconds: 80),
                          cursor: "_",
                          curve: Curves.easeIn,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.nunito(textStyle: style),
                        ),
                      ],
                      //totalRepeatCount: 1,
                      repeatForever:true,
                    ),
                  ),
                  SizedBox(
                    height: sizeHeight,
                  ),

                  //Align(),
                ],
              ),
            ),
          ),
        ),
      ),
    ];
    return MaterialApp(
      home: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return ColoredBox(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: sizeWidth*0.02),
                    child: CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_pentagon,
                            ),
                          ),
                        )
                    ),
                  ),
                  SizedBox(width: sizeWidth*0.6,),
                  _skipButton(setIndex: setIndex),
                  _signupButton,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}