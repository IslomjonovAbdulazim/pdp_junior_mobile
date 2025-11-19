import 'package:flutter/material.dart';
import 'package:pdp_junior_mobile/features/main/games_page.dart';
import 'package:pdp_junior_mobile/features/main/leaderboard_page.dart';
import 'package:pdp_junior_mobile/features/main/lessons_page.dart';
import 'package:pdp_junior_mobile/features/main/profile_page.dart';
import 'package:pdp_junior_mobile/features/main/progress_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activePage = 0;
  final pages = [
    LessonsPage(),
    ProgressPage(),
    LeaderboardPage(),
    GamesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        onTap: (value) {
          activePage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart)),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard)),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
