import 'package:flutter/material.dart';
import 'package:fusion_fest/Screens/analytics.dart';
import 'package:fusion_fest/Screens/dashboard.dart';
import 'package:fusion_fest/Screens/event_details.dart';
import 'package:fusion_fest/Screens/event_management.dart';
import 'package:fusion_fest/Screens/reviews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DifferentScreen(),
    );
  }
}

class DifferentScreen extends StatefulWidget {
  @override
  _DifferentScreenState createState() => _DifferentScreenState();
}

class _DifferentScreenState extends State<DifferentScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    EventManagementScreen(),
    Dashboard(),
    Analytics(),
    Reviews(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 4,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.rate_review_sharp),
          label: 'Reviews',
        ),
      ],
    );
  }
}

