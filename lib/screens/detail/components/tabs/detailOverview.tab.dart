import 'package:flutter/material.dart';

class DetailOverviewTab extends StatelessWidget {
  const DetailOverviewTab({
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
            "A brilliantly funny novel of money, sex, race, and bad behavior in the post-Obama era, featuring a wealthy Connecticut divorcée, her college-age daughter, and the famous novelist who is seduced by them both.",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
          ),
        ),
        Text(
          "Rachel Klein never meant to kiss her creative writing professor, but with his long eyelashes, his silky hair, and the sad, beautiful life he laid bare on Twitter, she does, and the kiss is very nice. Zahid Azzam never planned to become a houseguest in his student’s sprawling Connecticut home, but with the sparkling swimming pool, the endless supply of Whole Foods strawberries, and Rachel’s beautiful mother, he does, and the home is very nice. Becca Klein never thought she’d have a love affair so soon after her divorce, but when her daughter’s professor walks into her home, bringing with him an apricot standard poodle named Princess, she does, and the affair is…a very bad idea. Zigzagging between the rarefied circles of Manhattan investment banking, the achingly self-serious MFA programs of the Midwest, and the private bedrooms of Connecticut, Very Nice is an audacious, addictive, and wickedly smart take on the way we live now.",
          style: TextStyle(fontSize: 14, color: Colors.black38),
        )
      ]),
    ));
  }
}
