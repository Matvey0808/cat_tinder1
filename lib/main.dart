import 'package:cat_tinder1/screens/HomeScreen.dart';
import 'package:cat_tinder1/screens/Second_screen.dart';
import 'package:cat_tinder1/screens/block.dart';
import 'package:cat_tinder1/screens/card.dart';
import 'package:cat_tinder1/screens/favorite.dart';
import 'package:cat_tinder1/screens/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}
