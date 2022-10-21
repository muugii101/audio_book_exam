import 'package:flutter/material.dart';
import 'package:audio_book_exam/components/common/header.dart';

class RanksTab extends StatefulWidget {
  const RanksTab({super.key});

  @override
  State<RanksTab> createState() => _RanksTabState();
}

class _RanksTabState extends State<RanksTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "Ranks"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black45,
      ),
      body: const Center(
        child: Text(
          'Ranks',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
