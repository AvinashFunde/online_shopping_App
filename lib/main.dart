import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';
import 'onbordindS1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   backgroundColor: Colors.white,
      //
      //  // primarySwatch: Colors.blue,
      // ),

      home: Onbord1(),
    );
  }
}


