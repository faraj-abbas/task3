import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'Search_page.dart';
import 'Setting_page.dart';
import 'Account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Indexpage(),
    );
  }
}

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar = 0;

  final List<Widget> _pages = const [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];

  String _gettitle(int index) {
    switch (index) {
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'صفحة الاعدادات';
      case 3:
        return 'صفحة الحساب';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gettitle(_bottomNavbar)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 127, 57),
      ),
      body: IndexedStack(
        index: _bottomNavbar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        onTap: (index) {
          setState(() {
            _bottomNavbar = index;
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 94, 93, 93),
        selectedItemColor: const Color.fromARGB(255, 219, 127, 57),
        items: const [
          BottomNavigationBarItem(label: 'الرئيسية', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'البحث', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'الاعدادات', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'الحساب', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}
