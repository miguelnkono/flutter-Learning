import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBarForNavigation/homePage.dart';
import 'package:flutter_learn/bottomNavigationBarForNavigation/profilePage.dart';
import 'package:flutter_learn/bottomNavigationBarForNavigation/settingsPage.dart';

class firstPage extends StatefulWidget {
  firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  // counter to keep track of the current page
  int _index = 0;

  // method to update the index of the page we are on
  void _navigationBottomBar(index) {
    setState(() {
      _index = index;
    });
  }

  // list of pages
  final List _pages = [
    // homePage
    homePage(),
    // profilePage
    profilePage(),
    // settingsPage
    settingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Center(child: Text("1st Page")),
      ),
      body: _pages[_index],
      /*
      * We use the bottom navigation bar to allow navigation in our app.
      * This widget take a list of items that contains what will appear in the bottom navigation
      * bar.
      * */
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: _navigationBottomBar,
          items: const [
            // home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),

            // profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),

            // settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            )
          ],
      ),
    );
  }
}
