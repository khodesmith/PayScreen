import 'package:crack_pay/constants/colors.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: kInactive),
        elevation: 50,
        fixedColor: Colors.black,
        // selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.radio_button_checked_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Rewards',
            icon: Icon(Icons.diamond_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Finance',
            icon: Icon(Icons.insights_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Cards',
            icon: Icon(Icons.credit_card_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Me',
            icon: Icon(Icons.account_circle_rounded),
          ),
        ]);
  }
}
