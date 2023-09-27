import 'package:flutter/material.dart';

import 'animations.dart';
import 'bottom_bar_transition.dart';
import 'destinations.dart';

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.barAnimation,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final BarAnimation barAnimation;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: Colors.white,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: destinations.map<BottomNavigationBarItem>((d) {
          return BottomNavigationBarItem(
            icon: Icon(d.icon),
            label: d.label,
          );
        }).toList(),
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        unselectedLabelStyle: const TextStyle(color: Colors.blue),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: onDestinationSelected,
      ),
    );
  }
}
