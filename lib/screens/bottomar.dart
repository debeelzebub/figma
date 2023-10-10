import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/profile.dart';


class MyBottombar extends StatefulWidget {
  const MyBottombar({super.key});

  @override
  State<MyBottombar> createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
 
  final PersistentTabController _controller =PersistentTabController(initialIndex: 0);
  final List<Widget> _listOfWidget = [
  const My_Home(), 
  const MyProfile()
  ];


  @override
  Widget build(BuildContext context) {
    return  PersistentTabView(
              context,
             controller: _controller,
             screens: _listOfWidget,
          items: _navBarItems(),
          backgroundColor: Colors.white,
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          navBarStyle: NavBarStyle.style3,
          screenTransitionAnimation:const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(
              microseconds:5 
            )
          ),
          
            );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon:const Icon(Icons.home),
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
     
    ),
    
    PersistentBottomNavBarItem(
      icon:const Icon(Icons.person),
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
      
    ),
  ];
}
}



  