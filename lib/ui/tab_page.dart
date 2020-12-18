import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/platform_widget.dart';
import './home_page.dart';
import 'courses_page.dart';

class TabPage extends StatefulWidget {
  static const routeName = '/tab-page';

  final Map<String, dynamic> userData;

  TabPage({@required this.userData});

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _bottomNavIndex = 0;
  List<Widget> _pages;

  void showToast() {
    final loginCount = widget.userData['count'];
    final username = widget.userData['username'];
    final userEmail = widget.userData['email'];
    Fluttertoast.showToast(
      msg:
          'Anda telah login menggunakan $username : $userEmail sebanyak $loginCount kali',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Theme.of(context).accentColor,
      textColor: Colors.white,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showToast();
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      CoursePage(),
    ];
  }

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Platform.isIOS ? CupertinoIcons.home : Icons.home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Platform.isIOS ? CupertinoIcons.film : Icons.play_circle_filled,
      ),
      label: 'Courses',
    ),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/whatsapp.png'),
        ),
      ),
      body: _pages[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: _bottomNavBarItems),
      tabBuilder: (context, index) {
        return _pages[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
