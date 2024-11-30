import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => _NotificationState(),

      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500,),
          centerTitle: true,
          title: const Text('Notifications Screen'),
          
        ),
      
        floatingActionButton: const _FloatingButton(),
      
        bottomNavigationBar: const _BottomNavigation(),
      ),
    );
  }
}






class _FloatingButton extends StatelessWidget {
  const _FloatingButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        
        final int number = Provider.of<_NotificationState>(context, listen: false).number;
        Provider.of<_NotificationState>(context, listen: false).number = number + 1;
      },
      backgroundColor: Colors.pinkAccent,
      child: const FaIcon(FontAwesomeIcons.play, color: Colors.white),
    );
  }
}


class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation();

  @override
  Widget build(BuildContext context) {

    final int notificationsNumber = Provider.of<_NotificationState>(context).number;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pinkAccent,
      items:  [
        const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bone),
          label: 'Bones'
        ),

        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const FaIcon(FontAwesomeIcons.bell),
              
              Positioned(
                top: 0,
                right: 0,
                // child: Icon(Icons.brightness_1, size: 8, color: Colors.pinkAccent)
                child: Container(
                  alignment: Alignment.center,
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle
                  ),
                  child: Text('$notificationsNumber', style: TextStyle( color: Colors.white, fontSize: 7),),
                ),
              )
            ],
          ),
          label: 'Notifications',
        ),

        const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.dog),
          label: 'My Dog'
        ),
      ],
    );
  }
}




class _NotificationState extends ChangeNotifier {

  int _number = 0;


  int get number => _number;

  set number( int value ) {
    _number = value;
    notifyListeners();
  }
}