// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:evolphy/pages/forumPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'pages/berandaPage/berandaPage.dart';
import 'pages/latihanPage.dart';
import 'pages/modulPage.dart';
import 'pages/profilPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    BerandaPage(),
    ModulPage(),
    LatihanPage(),
    ForumPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1c202a),
        appBar: AppBar(
          backgroundColor: Color(0xFF1c202a),
          toolbarHeight: 65,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Halo,",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Rakha Putra👋",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[700],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.diamond,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "22",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: Color(0xFF252836),
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 17),
          child: GNav(
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Color(0xFF252836),
            color: Color(0xFF676D75),
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xFF9900CC),
            gap: 4,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            iconSize: 24,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: "Beranda",
                iconSize: 26,
              ),
              GButton(icon: Iconic.book_open, text: "Modul"),
              GButton(icon: Icons.timeline, text: "Latihan"),
              GButton(icon: Icons.chat_outlined, text: "Forum"),
              GButton(icon: Icons.person, text: "Profil"),
            ],
          ),
        ),
      ),
    );
  }
}
