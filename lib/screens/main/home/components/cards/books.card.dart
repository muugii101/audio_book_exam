import 'package:flutter/material.dart';
import 'package:audio_book_exam/theme/style.dart';
import 'package:audio_book_exam/screens/detail/detail.dart';

class BooksCard extends StatelessWidget {
  const BooksCard({
    required this.imgURL,
    required this.title,
    required this.writerName,
    required this.price,
    required this.rate,
    super.key,
  });

  final String imgURL;
  final String title;
  final String writerName;
  final String price;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        constraints: const BoxConstraints(maxWidth: 100),
        child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Detail()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(imgURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          color: Palette.mainColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.headphones,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      writerName,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style:
                          const TextStyle(color: Colors.black38, fontSize: 12),
                    )),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          "\$$price",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Palette.mainColor,
                        ),
                        Text(
                          rate,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
