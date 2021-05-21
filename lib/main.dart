import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nutribox/screens/auth_screen.dart';
import 'package:nutribox/screens/chat_screen.dart';
import 'package:nutribox/screens/splash_screen.dart';
import 'package:nutribox/screens/market_place.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // Initialize FlutterFire:
        future: Firebase.initializeApp(),
        builder: (context, appSnapshot) {
          return MaterialApp(
            title: 'nutribox',
            theme: ThemeData(
              primaryColor: Color(0xffa3cb73),
              backgroundColor: Color(0xffa3cb73),
              accentColor: Color(0xffffe061),
              accentColorBrightness: Brightness.dark,
              buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: Color(0xffa3cb73),
                textTheme: ButtonTextTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            home: appSnapshot.connectionState != ConnectionState.done
                ? SplashScreen()
                : StreamBuilder(
                    stream: FirebaseAuth.instance.userChanges(),
                    builder: (ctx, userSnapshot) {
                      if (userSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return SplashScreen();
                      }
                      if (userSnapshot.hasData) {
                        return MyHomePage();
                      }
                      return AuthScreen();
                    }),
          );
        });
  }
}
