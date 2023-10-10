import 'package:flutter/material.dart';
import 'package:flutter_gorouter/screens/blue_screen.dart';
import 'package:flutter_gorouter/screens/green_screen.dart';
import 'package:flutter_gorouter/screens/pink_screen.dart';
import 'package:flutter_gorouter/screens/red_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoRouter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.star,
          color: Colors.red,
        ),
        label: 'red'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.star,
          color: Colors.green,
        ),
        label: 'green'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.star,
          color: Colors.blue,
        ),
        label: 'blue'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.star,
          color: Colors.pink,
        ),
        label: 'pink'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        children: const [
          RedScreen(),
          GreenScreen(),
          BlueScreen(),
          PinkScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        onTap: (newIndex) {
          _pageController.animateToPage(
            newIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
