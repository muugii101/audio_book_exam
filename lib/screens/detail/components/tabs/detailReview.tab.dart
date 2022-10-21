import 'package:flutter/material.dart';

class DetailReviewTab extends StatelessWidget {
  const DetailReviewTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Book Review",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
          ),
        ),
      ]),
    ));
  }
}
