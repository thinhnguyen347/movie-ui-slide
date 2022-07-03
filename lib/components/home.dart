// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            tabBar(),
          ],
        ),
      ),
    );
  }
}

Widget tabBar() {
  return Container(
      padding: const EdgeInsets.only(top: 80, left: 25),
      child: TabBar(
        tabs: [Text('Popular'), Text('Now Playing'), Text('Upcoming'), Text('Top Rated')],
        indicatorColor: Colors.black,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
        labelPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black.withOpacity(0.5),
        isScrollable: true,
        labelStyle: TextStyle(fontFamily: 'Comfortaa', fontSize: 24, fontWeight: FontWeight.bold),
      )
    );
}
