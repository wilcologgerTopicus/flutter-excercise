import 'package:flutter/material.dart';

import 'animations.dart';
import 'bottom_bar_transition.dart';
import 'destinations.dart';

class DisappearingNavigationBar extends StatelessWidget {
  const DisappearingNavigationBar({
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
      backgroundColor: Colors.green,
      child: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.green,
        destinations: items.map<NavigationDestination>((d) {
          return NavigationDestination(
            icon: Icon(d.icon),
            label: d.label,
          );
        }).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
