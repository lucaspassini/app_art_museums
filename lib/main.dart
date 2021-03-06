import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_art_museums/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Museums',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}
