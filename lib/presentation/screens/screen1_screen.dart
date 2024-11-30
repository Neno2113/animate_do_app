import 'package:animate_do/animate_do.dart';
import 'package:animate_do_app/presentation/screens/twitter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
          duration: const Duration(milliseconds: 500),
          child: const Text('Animdate_do')
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const TwitterScreen()));

            },
            icon: const FaIcon(FontAwesomeIcons.twitter),
          ),

          SlideInLeft(
            from: 50,
            child: IconButton(
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const Screen1()));
              },
              icon: const Icon( Icons.navigate_next),
            ),
          ),

        ],
      ),

      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          onPressed: (){},
          child: const FaIcon(FontAwesomeIcons.play),
        ),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElasticIn(
              delay: const Duration(milliseconds: 1100),
              child: const Icon(Icons.new_releases, color: Colors.blue, size: 40)
            ),

            FadeInDown(
              delay: const Duration(milliseconds: 200),
              child: const Text('Title', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200))
            ),


            FadeInDown(
              delay: const Duration(milliseconds: 800),
              child: const Text('I m a small title', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
            ),

            FadeInLeft(
              delay: const Duration(milliseconds: 1100),
              child: Container(
                width: 190,
                height: 2,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}