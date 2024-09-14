import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    Center(child: const Text("Home")),
    Center(child: const Text("Searh")),
    Center(child: const Text("Tickets")),
    Center(child: const Text("Profile"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My tickets"),
        ), // AppBar
        
        body: Center(
          child: Text("Tickets info"),
        ), // Center

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey, // set the selected item's color
          showSelectedLabels: false,
          unselectedItemColor:
              const Color(0xFF526400), // set the unselected item's color
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                // icon: Icon(Icons.home),
                label: "Home"), // BottomNavigationBarItem: home
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"), // BottomNavigationBarItem: search
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                label: "Tickets"), // BottomNavigationBarItem: airplane_tocket
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile") // BottomNavigationBarItem: person
          ],
        ) // BottomNavigationBar
        ); // Scaffold
  }
}
