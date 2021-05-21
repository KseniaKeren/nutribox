import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nutritionist.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:nutribox/screens/chat_screen.dart';

Nutritionist rotem =
    Nutritionist(name: 'רותם אזואלס', specialization: 'מתמחה בטבעונות');

class Nutriotionist extends StatelessWidget {
  void moveToChat(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/LOGO.png",
                  fit: BoxFit.fitWidth,
                ),
              )),
          // This two lines change the status bar color
          backwardsCompatibility: false,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Color(0xffffe061)),
          centerTitle: true,
          title: Text('פרופיל'),
          actions: [
            IconButton(
                icon: const Icon(Icons.arrow_back_sharp),
                onPressed: () => Navigator.pop(context, false)),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Color(0xffa3cb73),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                            child: Image.asset(
                          'assets/rotem.jpg',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        )),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 365,
                height: 37,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 1,
                      left: 266.3788757324219,
                      child: Image.asset(
                        'assets/Rectangle 11.png',
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 365,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(255, 224, 97, 1),
                              width: 3,
                            ),
                          ))),
                  Positioned(
                      top: 5,
                      left: 300,
                      child: Text(
                        ':שם',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 21,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 5,
                      left: 100,
                      child: Text(
                        rotem.name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 21,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
            SizedBox(
              height: 20,
            ),
            // Figma Flutter Generator Component27Widget - INSTANCE
            Container(
                width: 365,
                height: 37,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 1,
                      left: 269,
                      child: Image.asset(
                        'assets/Rectangle12.png',
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 365,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(163, 202, 114, 1),
                              width: 3,
                            ),
                          ))),
                  Positioned(
                      top: 5,
                      left: 275,
                      child: Text(
                        ':התמחות',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 21,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 5,
                      left: 100,
                      child: Text(
                        rotem.specialization,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 21,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
            SizedBox(
              height: 20,
            ),

            Container(
                width: 365,
                height: 37,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 1,
                      left: 266.3788757324219,
                      child: Image.asset(
                        'assets/Rectangle14.png',
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 365,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(255, 174, 113, 1),
                              width: 3,
                            ),
                          ))),
                  Positioned(
                      top: 5,
                      left: 275,
                      child: Text(
                        ':דף עסקי',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 21,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 5,
                      left: 115,
                      child: RichText(
                        text: TextSpan(
                          text: 'לחצו כאן',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Assistant',
                              fontSize: 21,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      )),
                ])),
            SizedBox(
              height: 20,
            ),
            // Figma Flutter Generator Component14Widget - INSTANCE
            Container(
                width: 279,
                height: 78,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/Vector.png',
                      )),
                  Positioned(
                      top: 25,
                      left: 80,
                      child: Text(
                        'תעודת רישיון',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Assistant',
                            fontSize: 25,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).accentColor, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                  onPressed: () => moveToChat(context),
                  child: Text(
                    'chat',
                    style: TextStyle(
                        fontSize: 40, color: Theme.of(context).accentColor),
                  )),
            )
            // IconButton(
            //   icon: Icon(
            //     Icons.chat_bubble_outline,
            //     size: 80.0,
            //   ),
            //   onPressed: () => moveToChat(context),
            // )
            // Container(
            //   width: 411,
            //   height: 10,
            //   child: InkWell(
            //       onTap: () => moveToChat(context),
            //       child: Icon(Icons.chat_bubble_outline, size: 60)),
            // ),
          ],
        ),
      ),
    );
  }
}
