import 'package:flutter/material.dart';
import 'package:logincourse/counter_screen.dart';
import 'package:logincourse/login_screen.dart';
import 'package:logincourse/messenger_screen.dart';
import 'package:logincourse/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:MessengerScreen() ,
    );
  }
}


