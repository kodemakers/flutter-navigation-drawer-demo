import 'package:flutter/material.dart';
import 'package:navigationdrawer/widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Navigation Drawer'),
      ),
      drawer: NavigationDrawer(),
      body: Container(),
    ));
  }
}
