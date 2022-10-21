import 'package:flutter/material.dart';
import 'package:audio_book_exam/components/common/header.dart';
import 'package:audio_book_exam/screens/main/home/components/listContainers/bestSeller.container.dart';
import 'package:audio_book_exam/screens/main/home/components/listContainers/category.container.dart';
import 'package:audio_book_exam/screens/main/home/components/listContainers/thisWeek.container.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Header(title: "Discover"),
          backgroundColor: Colors.white,
          elevation: 3,
          shadowColor: Colors.black45,
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            // Search
            SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Material(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: 40,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          highlightColor: Colors.yellow[800],
                          splashColor: Colors.yellow[900],
                          onTap: () {},
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              child: Row(children: const [
                                Icon(Icons.search, color: Colors.black),
                                SizedBox(width: 10),
                                Text(
                                  "Search your books",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ])),
                        ),
                      ),
                    ))),
            // Best Sellers
            const BestSellerContainier(),
            // Categories
            const CategoryContainer(),
            // New this weeknd section
            const ThisWeekContainer(),
          ],
        ));
  }
}

class Book {
  String title, writer;
  Book({required this.title, required this.writer});
}
