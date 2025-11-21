import 'package:flutter/material.dart';
import 'package:pdp_junior_mobile/features/main/ai_page.dart';
import 'package:pdp_junior_mobile/features/main/books_page.dart';
import 'package:pdp_junior_mobile/features/main/games_page.dart';
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
    ProgressPage(), // Fayzulloh, Abdulloh, Otabek
    BooksPage(), // Abdurahmon, Behzod
    AiPage(), // Muhammad Safo, Miraziz
    GamesPage(), // Madina, Akmal, Umar, Umarjon
    ProfilePage(), // Bahozir, Salohiddin
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Kitob"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "AI"),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: "O'yin"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
