import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0x7bf3e8c4),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false, // set to false to remove debug banner
      routes: {
        "/" : (context) => Homepage(),

      },


    );
  }
}




