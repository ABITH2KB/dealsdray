import 'package:flutter/material.dart';

import '../home.dart';
import 'Dashboard.dart';
import 'cart.dart';



class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;
  TabNavigationItem(
      {required this.page, required this.title, required this.icon});
  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page:homee(),
      icon: Icon(Icons.home),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: Cart(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
    TabNavigationItem(
      page: Dashboard(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
  ];
}




