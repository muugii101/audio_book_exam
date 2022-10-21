import 'package:flutter/material.dart';
import 'package:audio_book_exam/screens/detail/components/detail.header.dart';
import 'package:audio_book_exam/screens/detail/components/tabs/detailBookDetail.tab.dart';
import 'package:audio_book_exam/screens/detail/components/tabs/detailOverview.tab.dart';
import 'package:audio_book_exam/screens/detail/components/tabs/detailReview.tab.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 305;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            DetailHeader(shrink: _isShrink),
            SliverToBoxAdapter(
              //headerSilverBuilder only accepts slivers
              child: Material(
                color: Colors.white,
                elevation: 3,
                shadowColor: Colors.black45,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                        child: SizedBox(
                            height: 37,
                            child: TabBar(
                              // isScrollable: true,
                              labelColor: Colors.black,
                              tabs: const [
                                Tab(child: Text('Overview')),
                                Tab(child: Text('Book detail')),
                                Tab(child: Text('Review')),
                              ],
                              indicator: ShapeDecoration(
                                color: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(37)),
                              ),
                            )))
                  ],
                ),
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              DetailOverviewTab(),
              DetailBookDetailTab(),
              DetailReviewTab(),
            ],
          ),
        ),
      ),
    );
  }
}
