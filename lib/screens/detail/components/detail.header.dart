import 'package:flutter/material.dart';
import 'package:audio_book_exam/theme/style.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    required this.shrink,
    super.key,
  });

  final bool shrink;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: shrink
          ? const Text(
              "Very Nice",
            )
          : null,
      pinned: true,
      toolbarHeight: 55,
      expandedHeight: 300.0,
      backgroundColor: Colors.white,
      shadowColor: Colors.black45,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 70, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: const Image(
                          height: 150,
                          width: 100,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1559534437l/42359582.jpg'),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Very Nice",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "by Marcy Dermansky",
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 14),
                            )),
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Palette.mainColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Palette.mainColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Palette.mainColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Palette.mainColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Palette.mainColor,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.infinity, 45),
                                elevation: 0),
                            child: const Text("Preview"),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(double.infinity, 45),
                              elevation: 0),
                          child: const Text("Audiobook \$14.99",
                              style: (TextStyle(color: Colors.white))),
                        )),
                      ],
                    ))
              ],
            ),
          ))),
    );
  }
}
