import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Welcome.dart';
import 'package:helloworld/Login.dart';
import 'package:helloworld/Register.dart';
import 'package:helloworld/demo.dart';
import 'package:helloworld/forgottpassword.dart';


import 'Edit_Profile.dart';
import 'Profile.dart';
import 'Resetpass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var kBackgroundColor;

  var kTextColor;



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agro Pro',
      theme: ThemeData(fontFamily: "cairo",
      scaffoldBackgroundColor: kBackgroundColor,
      textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),),
      home: Welcome(),
      );



  }
}

