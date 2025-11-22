import 'package:flutter/material.dart';
import '../data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.details), label: 'Details'),
          ],
          onDestinationSelected: (int value) {
            selectedIndexNotifier.value = value;
          },
          selectedIndex: selectedIndex,
        );
      },
    );
  }
}
