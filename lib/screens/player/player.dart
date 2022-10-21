import 'dart:ui';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://m.media-amazon.com/images/I/41Q39yaJXvL._SL500_.jpg"),
            fit: BoxFit.cover),
      ),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 19.0, sigmaY: 19.0),
          child: SafeArea(
              child: Column(children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.list),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Material(
                          color: Colors.white,
                          elevation: 10,
                          shadowColor: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: const Image(
                                height: 280,
                                width: 180,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/41Q39yaJXvL._SL500_.jpg'),
                              ))),
                      const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "50% Complete - 1 hr 30 mins left",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ))
                    ])),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Wilder Girls",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "by Rory Power",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white54),
                            ))
                      ]),
                ),
                Slider(
                  thumbColor: Colors.white,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white54,
                  value: 50,
                  max: 100,
                  onChanged: (double value) {
                    setState(() {});
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "1:30:00",
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    Text(
                      "-1:30:00",
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Material(
                          color: Colors
                              .transparent, //To let the Container background be displayed
                          child: IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            icon: const Icon(Icons.replay_10),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors
                              .transparent, //To let the Container background be displayed
                          child: IconButton(
                            iconSize: 60,
                            color: Colors.white,
                            icon: const Icon(
                              Icons.pause,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors
                              .transparent, //To let the Container background be displayed
                          child: IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            icon: const Icon(Icons.forward_10),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ))
          ]))),
    ));
  }
}
