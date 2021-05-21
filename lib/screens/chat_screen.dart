import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:nutribox/widgets/chat/messages.dart';
import 'package:nutribox/widgets/chat/new_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Future<void> _initApp() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    await messaging.getToken().then((value) => print(value));
    await messaging.getInitialMessage().then((value) => print(value));
    FirebaseMessaging.onMessage.listen((value) => print(value));
    FirebaseMessaging.onMessageOpenedApp.listen((value) => print(value));
    // FirebaseMessaging.onBackgroundMessage(onBackgroundMessageHandler);
    messaging.subscribeToTopic('chat');
  }

  @override
  void initState() {
    super.initState();
    _initApp();
    //   final fbm = FirebaseMessaging();
    //   fbm.requestNotificationPermissions();
    //   fbm.configure(onMessage: (msg) {
    //     print(msg);
    //     return;
    //   }, onLaunch: (msg) {
    //     print(msg);
    //     return;
    //   }, onResume: (msg) {
    //     print(msg);
    //     return;
    //   });
    //   fbm.subscribeToTopic('chat');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "chat with Rotem",
        ),
        actions: [
          DropdownButton(
            underline: Container(),
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            items: [
              DropdownMenuItem(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 8),
                      Text('Logout'),
                    ],
                  ),
                ),
                value: 'logout',
              ),
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
