// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/articspage/artics_page.dart';
import 'package:new_spotifyui_api/view/homepage/home_page.dart';
import 'package:new_spotifyui_api/view/profilepage/profile_page.dart';
import 'package:new_spotifyui_api/view/searchpage/search_page.dart';

import '../../core/constant_image.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int _selectedIndex = 0;
  void onTapp(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ArticsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapp,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Iimage.icon1,
                color: _selectedIndex == 0
                    ? const Color(0xff1ED760)
                    : const Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Iimage.icon2,
                color: _selectedIndex == 1
                    ? const Color(0xff1ED760)
                    : const Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Iimage.icon3,
                color: _selectedIndex == 2
                    ? const Color(0xff1ED760)
                    : const Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Iimage.icon4,
                color: _selectedIndex == 3
                    ? const Color(0xff1ED760)
                    : const Color(0xff808080),
              ),
              label: ""),
        ],
      ),
    );
  }
}
