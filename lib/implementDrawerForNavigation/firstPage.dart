import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text("1st Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // drawer header first. Good practise
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // good practise is to pop the drawer first
                Navigator.pop(context);
                // go to home
                Navigator.pushNamed(context, '/homePage');
              },
            ),

            // settings page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                // good practise is to pop the drawer first
                Navigator.pop(context);
                // go to settings page
                Navigator.pushNamed(context, '/settingsPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
