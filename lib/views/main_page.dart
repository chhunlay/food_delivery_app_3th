import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page/chat_page.dart';
import 'package:flutter_food_delivery_app/views/home_page/home_page.dart';
import 'package:flutter_food_delivery_app/views/profile_page/profile_page.dart';

import 'order_page/orders_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // list page
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  // current page
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        itemCornerRadius: 12,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            title: Text('Orders'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
