import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/profile.dart';


class MyBottombar extends StatefulWidget {
  MyBottombar({super.key});

  @override
  State<MyBottombar> createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
 
  PersistentTabController _controller =PersistentTabController(initialIndex: 0);
   int _select = 0;
  final List<Widget> _listOfWidget = [
  My_Home(), 
  MyProfile()
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading:_select==0?true:false ,

        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title:_select==0?Text("Home"):Text("Profile"),
        actions: [
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.search))
        ],
      ),
      drawer: Drawer(),
       body: PersistentTabView(
              context,
             controller: _controller,
             screens: _listOfWidget,
          items: _navBarItems(),
          backgroundColor: Colors.white,
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          navBarStyle: NavBarStyle.style3,
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(
              microseconds:5 
            )
          ),
          
            )
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: IconButton(onPressed: (){
        setState(() {
          _select=0;
        });
      }, icon: Icon(Icons.home)),
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    
    PersistentBottomNavBarItem(
      icon: IconButton(onPressed: (){
        setState(() {
          _select=1;
        });
      }, icon: Icon(Icons.person)),
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
}



  