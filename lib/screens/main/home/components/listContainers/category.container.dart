import 'package:flutter/material.dart';
import 'package:audio_book_exam/screens/main/home/components/cards/category.card.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Categories",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              constraints: const BoxConstraints(minHeight: 70, maxHeight: 70),
              margin: const EdgeInsets.only(bottom: 10),
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  children: const <Widget>[
                    CategoryCard(
                        category: "Romance",
                        backImgURL:
                            "https://uploads-ssl.webflow.com/60e3d740d6e5994e4a0d47ff/60e3d740d6e599ac2a0d4ca8_60e3a35a4f325785be95dd82_Mesh%252091-p-500.jpeg"),
                    CategoryCard(
                        category: "Mysteries & Thrillers",
                        backImgURL:
                            "https://uploads-ssl.webflow.com/60e3d740d6e5994e4a0d47ff/60e3d740d6e59927540d4c3e_60e3a34b79a66e55412fa903_Mesh%252038-p-500.jpeg"),
                    CategoryCard(
                        category: "Nonfiction",
                        backImgURL:
                            "https://uploads-ssl.webflow.com/60e3d740d6e5994e4a0d47ff/60e3d740d6e5995d4c0d4c26_60e3a34870566d7a0394a95c_Mesh%252026-p-500.jpeg"),
                  ]),
            )
          ]),
    );
  }
}
