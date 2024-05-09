import 'package:flutter/material.dart';


import 'bottom.dart';


class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(),
          unselectedLabelStyle: const TextStyle(),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 34),label: "",),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.window_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.done),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          onTap: _onItemTapped,
        ),
      ),
    );
  }
}