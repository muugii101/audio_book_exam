import 'package:flutter/material.dart';
import 'package:audio_book_exam/screens/main/home/components/cards/books.card.dart';

class BestSellerBooks {
  String title, writerName, price, rate, imgURL;
  BestSellerBooks(
      {required this.imgURL,
      required this.title,
      required this.writerName,
      required this.price,
      required this.rate});
}

class BestSellerContainier extends StatelessWidget {
  const BestSellerContainier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BestSellerBooks> books = [
      BestSellerBooks(
          imgURL:
              "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1559534437l/42359582.jpg",
          title: "Very Nice",
          writerName: "Marcy Dermansky",
          price: "14.99",
          rate: "4.5"),
      BestSellerBooks(
          imgURL: "https://m.media-amazon.com/images/I/41Q39yaJXvL._SL500_.jpg",
          title: "Wilder Girls",
          writerName: "Rory Power",
          price: "16.99",
          rate: "4.5"),
      BestSellerBooks(
          imgURL: "https://m.media-amazon.com/images/I/51hjrtPJD8L._SL500_.jpg",
          title: "Turbulence",
          writerName: "David Szalay",
          price: "12.99",
          rate: "4.5"),
      BestSellerBooks(
          imgURL: "https://m.media-amazon.com/images/I/31usA4ifbjL._SL500_.jpg",
          title: "Feel Free",
          writerName: "Nick Laird",
          price: "14.99",
          rate: "4.5"),
    ];

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
                  const Text("Bestsellers",
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
              constraints: const BoxConstraints(minHeight: 210, maxHeight: 220),
              alignment: Alignment.topLeft,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: books.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BooksCard(
                        imgURL: books[index].imgURL,
                        title: books[index].title,
                        writerName: books[index].writerName,
                        price: books[index].price,
                        rate: books[index].rate);
                  }),
            )
          ]),
    );
  }
}
