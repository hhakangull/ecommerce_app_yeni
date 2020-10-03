import 'package:e_app/Screens/Balance/balance_home.dart';
import 'package:e_app/Screens/Product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = <Widget>[
      BalanceHomeScreen(),
      ProductScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Dashboard"),
      // ),
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 10,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[800],
              tabs: [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.shopping_bag_outlined, text: 'Products'),
                GButton(icon: Icons.shopping_cart_outlined, text: 'Orders'),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
