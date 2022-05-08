import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:save/home.dart';
import 'package:save/tap.dart';
import 'package:save/tuto.dart';
import 'auth.dart';
import 'utils.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



Future<void> main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(splash: const Center(
        child: Image(
            image: AssetImage("assets/syp.jpg")
        ),
      ), nextScreen:MainPage(),),
    );
  }
}


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.connectionState== ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError){
            return Center(child: Text('Something is wrong !'));
          }
          else if (snapshot.hasData){
            return Tapping(title: 'tapping');
          }
          else {
            return AuthPage();
          }
        },
      ),
    );
  }
}


