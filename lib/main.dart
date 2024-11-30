import 'package:animate_do_app/presentation/screens/navigation_scree.dart';
// import 'package:animate_do_app/presentation/screens/screen1_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),  
      home: NavigationScreen()
    );
  }
}