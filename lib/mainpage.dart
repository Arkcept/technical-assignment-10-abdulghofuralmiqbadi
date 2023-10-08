import 'package:aplikasi_cuaca/pagefirst.dart';
import 'package:aplikasi_cuaca/pagefourth.dart';
import 'package:aplikasi_cuaca/pagesecond.dart';
import 'package:aplikasi_cuaca/pagethirt.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey[800]!,
        hoverColor: const Color.fromRGBO(245, 245, 245, 1),
        gap: 8,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(icon: Icons.search, text: 'Class'),
          GButton(icon: Icons.person, text: 'Profile'),
          GButton(icon: Icons.settings, text: 'Settings'),
        ],
        onTabChange: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (_selectedTab) {
      case 0:
        return HomePageContent();
      case 1:
        return SearchPageContent();
      case 2:
        return ProfilePageContent();
      default:
        return SettingsPageContent();
    }
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSiji(),
    );
  }
}

class SearchPageContent extends StatelessWidget {
  const SearchPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageLoro(),
    );
  }
}

class ProfilePageContent extends StatelessWidget {
  const ProfilePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class SettingsPageContent extends StatelessWidget {
  const SettingsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagePapat(),
    );
  }
}
