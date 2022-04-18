/*
import 'package:flutter/material.dart';

import '../Theme/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width11=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Green & Clean',
        style: TextStyle(
          color: kWhite,
          fontSize: 18,
        ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
      //elevation: 2,
      ),
   bottomNavigationBar: BottomAppBar(
     //color: kPrimaryColor,
     color: Colors.red,
     child: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.call,),
      label: 'Calls',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.camera),
      label: 'Camera',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chats',
      ),
      ],
      ),
   ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text('Please select a cleaning category',
          style: TextStyle(
            color: Colors.grey.withOpacity(0.8),
            fontSize: 17
          ),
          ),
        ],
      ) ,
    );
  }
}
*/








import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../Theme/colors.dart';
import 'available_cleaner.dart';
import 'my_home.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  int? selected;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
        /*  appBar: AppBar(
        centerTitle: true,
        title: const Text('Green & Clean',
        style: TextStyle(
        color: kWhite,
        fontSize: 18,
    ),
    ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        ),*/

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        //backgroundColor: kPrimaryColor,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState((){
          _currentIndex = index;
            selected=index;
        }
        ),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(
              Icons.home,
             // color: _currentIndex==selected ?Colors.white:Colors.white,
            //  size:_currentIndex==selected ?32:20,

            ),
            title: const Text('Home',
            ),
            //activeColor: Colors.white,
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.watch_later_outlined,
            //  size:_currentIndex==selected ?32:20,

            ),
            title: const Text('Time'),
            //activeColor: Colors.white,
            //inactiveColor: Colors.white.withOpacity(0.8),

            inactiveColor: Colors.green.withOpacity(0.8),
              activeColor: Colors.green,

              textAlign: TextAlign.center,

          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.calendar_month),
            title: const Text(
              'Schedule',
            ),
            //activeColor: Colors.white,
            //inactiveColor: Colors.white.withOpacity(0.8),

            inactiveColor: Colors.green.withOpacity(0.8),
            activeColor: Colors.green,

            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.replay_5_outlined),
            title: const Text('Settings'),
            //activeColor: Colors.white,
            //inactiveColor: Colors.white.withOpacity(0.8),

            inactiveColor: Colors.green.withOpacity(0.8),
            activeColor: Colors.green,

            textAlign: TextAlign.center,

          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text(
              'Profile',
            ),
            //activeColor: Colors.white,
            //inactiveColor: Colors.white.withOpacity(0.8),

            inactiveColor: Colors.green.withOpacity(0.8),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
        ],
      ),

      body:_currentIndex==0?
      MyHome():
      _currentIndex==1?
         AvailableCleanerScreen()
          :Container(
        color: Colors.yellow,
      )
    );
  }
}