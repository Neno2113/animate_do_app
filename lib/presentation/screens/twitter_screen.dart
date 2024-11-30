import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterScreen extends StatefulWidget {
  const TwitterScreen({super.key});

  @override
  State<TwitterScreen> createState() => _TwitterScreenState();
}

class _TwitterScreenState extends State<TwitterScreen> {

  bool isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            isAnimate = true;
          });
        },
        backgroundColor: Colors.pink,
        child: const FaIcon(FontAwesomeIcons.play),
      ),
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: isAnimate,
          from: 30,
          duration: const Duration(seconds: 1),
          child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white, size: 40)
        ),
      ),
    );
  }
}