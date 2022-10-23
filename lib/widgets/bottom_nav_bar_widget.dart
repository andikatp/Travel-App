import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/save.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/idk.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/setting.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/account.png'),
              label: '',
            ),
          ]),
    );
  }
}
