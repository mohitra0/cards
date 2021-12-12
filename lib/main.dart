import 'package:cards/card1/screens/mainScreen.dart';
import 'package:cards/card2/card2.dart';
import 'package:cards/card3/card3.dart';
import 'package:cards/card4/home_page.dart';
import 'package:cards/card5/ui/home_page.dart';
import 'package:cards/card6/template_gallery_app.dart';
import 'package:cards/card7/superheroes_app.dart';
import 'package:cards/card8/orix_gaming_app.dart';
import 'package:cards/card9/photographers_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Card1(),
    );
  }
}
