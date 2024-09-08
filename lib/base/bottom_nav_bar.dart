import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My tickets"),
      ), // AppBar
      body: Center(
        child: Text("Tickets info"),
      ), // Center
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.blueGrey, // set the selected item's color
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xFF526400),   // set the unselected item's color
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"), // BottomNavigationBarItem: home
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"), // BottomNavigationBarItem: search
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Tickets"), // BottomNavigationBarItem: airplane_tocket
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")  // BottomNavigationBarItem: person
        ]
        /*
        items: const [
          BottomNavigationBarItem(
            icons: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: FluentSystemIcons.ic_fluent_home_filled,
            label: "Home"
          ), // BottomNavigationBarItem: home
          BottomNavigationBarItem(
            icons: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: FluentSystemIcons.ic_fluent_search_filled,
            label: "Search"
          ), // BottomNavigationBarItem: search
          BottomNavigationBarItem(
            icons: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: FluentSystemIcons.ic_fluent_ticket_filled, 
            label: "Tickets"
          ), // BottomNavigationBarItem: airplane_tocket
          BottomNavigationBarItem(
            icons: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: FluentSystemIcons.ic_fluent_person_filled, 
            label: "Profile"
          )  // BottomNavigationBarItem: person
        ]
        */
      ) // BottomNavigationBar
    ); // Scaffold
  }
}