import 'package:flutter/material.dart';
import 'package:audio_book_exam/screens/main/home/components/cards/books.card.dart';

class ThisWeek {
  String title, writerName, price, rate, imgURL;
  ThisWeek(
      {required this.imgURL,
      required this.title,
      required this.writerName,
      required this.price,
      required this.rate});
}

class ThisWeekContainer extends StatelessWidget {
  const ThisWeekContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ThisWeek> books = [
      ThisWeek(
          imgURL: "https://m.media-amazon.com/images/I/51z0VQ9AKYL._SL500_.jpg",
          title: "King of the Mississippi: A Novel ",
          writerName: "Mike Freedman",
          price: "14.99",
          rate: "4.5"),
      ThisWeek(
          imgURL: "https://m.media-amazon.com/images/I/41aXmX5hfiL._SL500_.jpg",
          title: "All the Things We Never Said",
          writerName: "Yasmin Rahman",
          price: "16.99",
          rate: "4.5"),
      ThisWeek(
          imgURL: "https://m.media-amazon.com/images/I/41cf-256r-L._SL500_.jpg",
          title:
              "Semicolon: The Past, Present, and Future of a Misunderstood Mark",
          writerName: "Cecelia Watson",
          price: "12.99",
          rate: "4.5"),
      ThisWeek(
          imgURL: "https://m.media-amazon.com/images/I/41zPidbvyAL._SL500_.jpg",
          title: "Die Nickel Boys",
          writerName: "Colson Whitehead",
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
                  const Text("New this week",
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
