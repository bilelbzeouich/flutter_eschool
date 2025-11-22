import 'package:flutter/material.dart';
import 'navbar_widget.dart';
import '../data/notifiers.dart';
import '../pages/home_page.dart';
import '../pages/details_page.dart';

List<Widget> pages = [HomePage(), DetailsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            onPressed: () {
              brightnessNotifier.value = !brightnessNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: brightnessNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, selectedIndex, child) {
          return pages.elementAt(selectedIndex);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
