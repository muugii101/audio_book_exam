import 'package:flutter/material.dart';
import 'package:audio_book_exam/components/common/customPageRouteBuilder.dart';
import 'package:audio_book_exam/screens/player/player.dart';
import 'package:audio_book_exam/theme/style.dart';
import 'package:audio_book_exam/screens/main/favorite/favorite.tab.dart';
import 'package:audio_book_exam/screens/main/home/home.tab.dart';
import 'package:audio_book_exam/screens/main/ranks/ranks.tab.dart';

class TabContainerDefault extends StatefulWidget {
  const TabContainerDefault({super.key});
  @override
  State<TabContainerDefault> createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  int currentTab = 0;
  Widget currentScreen = const HomeTab();
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> screens = [
    const HomeTab(),
    const RanksTab(),
    const FavoriteTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: Align(
            alignment: const Alignment(0.9, 0.97),
            child: SizedBox(
                height: 74,
                width: 74,
                child: FloatingActionButton(
                  elevation: 4.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRouteBuilder(
                        widget: const Player(),
                      ),
                    );
                  },
                  shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4)),
                  child: const CircleAvatar(
                    radius: 72.0,
                    backgroundImage: NetworkImage(
                        'https://m.media-amazon.com/images/I/41Q39yaJXvL._SL500_.jpg'),
                    backgroundColor: Colors.transparent,
                    child: Center(
                        child: Icon(
                      Icons.pause,
                      size: 34,
                      color: Colors.white,
                    )),
                  ),
                ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Material(
              color: Palette.mainColor,
              // height: 50,
              // padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              // width: double.infinity,
              child: InkWell(
                highlightColor: Colors.yellow[800],
                splashColor: Colors.yellow[900],
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRouteBuilder(
                      widget: const Player(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(15, 5, 100, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Wilder Girls",
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            Text(
                              "Rory Power",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            )
                          ]),
                      IconButton(
                        splashColor: Colors.yellow[900],
                        icon: const Icon(Icons.forward_10),
                        iconSize: 24,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.explore),
                        iconSize: 24,
                        color: currentTab == 0
                            ? Palette.mainColor
                            : Colors.black38,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const HomeTab(); // if user taps on this dashboard tab will be active
                            currentTab = 0;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.sort),
                        iconSize: 24,
                        color: currentTab == 1
                            ? Palette.mainColor
                            : Colors.black38,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const RanksTab(); // if user taps on this dashboard tab will be active
                            currentTab = 1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.favorite),
                        iconSize: 24,
                        color: currentTab == 2
                            ? Palette.mainColor
                            : Colors.black38,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const FavoriteTab(); // if user taps on this dashboard tab will be active
                            currentTab = 2;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
