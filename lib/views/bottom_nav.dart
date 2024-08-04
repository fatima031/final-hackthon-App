import 'package:flutter/material.dart';

import 'package:todayappforhackthon/location.dart';
import 'package:todayappforhackthon/utils/customColors.dart';

import 'package:todayappforhackthon/views/cart.dart';

import 'package:todayappforhackthon/views/home.dart';
import 'package:todayappforhackthon/views/orders.dart';

import 'tracking.dart';

class Nav_tab extends StatefulWidget {
  const Nav_tab({super.key});

  @override
  State<Nav_tab> createState() => _Nav_tabState();
}

class _Nav_tabState extends State<Nav_tab> {
  Widget currentScreen = const Home_view();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Container(
          color: CustomColors.buttonColors,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = const Home_view();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 0 ? Colors.white : Colors.yellow,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 1;
                    currentScreen = const Location_Page();
                  });
                },
                child: Icon(
                  Icons.open_in_browser,
                  color: activeTab == 1 ? Colors.white : Colors.yellow,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 2;
                    currentScreen = const OrderDetail();
                  });
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: activeTab == 2 ? Colors.white : Colors.yellow,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = const Orders();
                  });
                },
                child: Icon(
                  Icons.book_online_outlined,
                  color: activeTab == 3 ? Colors.white : Colors.yellow,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 4;
                    currentScreen = const TrackOrderPage();
                  });
                },
                child: Icon(
                  Icons.account_balance,
                  color: activeTab == 4 ? Colors.white : Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
