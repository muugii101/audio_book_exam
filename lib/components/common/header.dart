import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Material(
              elevation: 2,
              shape: CircleBorder(side: BorderSide.none),
              child: CircleAvatar(
                radius: 22.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  backgroundColor: Colors.transparent,
                ),
              )),
        ]);
  }
}
