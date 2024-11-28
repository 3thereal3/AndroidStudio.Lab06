import 'package:flutter/material.dart';
import 'widgets/sign_in_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'КН-32: Lomaka Dmytro',
      home: SignInScreen(),
    );
  }
}