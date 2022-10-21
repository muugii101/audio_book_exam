import 'package:flutter/material.dart';
import 'package:audio_book_exam/components/common/header.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "Favorite"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black45,
      ),
      body: const Center(
        child: Text(
          'Favorite',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
