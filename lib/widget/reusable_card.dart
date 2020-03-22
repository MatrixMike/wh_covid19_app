import 'package:flutter/material.dart';
import 'package:wh_covid19/style.dart';

class ReusableCard extends StatelessWidget {
  /// Title of the card
  final String title;

  /// Description of the card
  final String description;

  /// Color of the card
  final Color color;

  /// Route to view
  final String routeTo;

  ReusableCard(
      {this.title, this.description, this.color = Colors.white, this.routeTo})
      : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
        color: color,
        elevation: 6,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: cardTitleTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              description != null ? Text(
                description,
                style: cardDescriptionTextStyle,
              ) : Container(),
            ],
          ),
        ),
      ),
      onTap: () {
        if(routeTo != null) {
          Navigator.pushNamed(context, routeTo);
        }
      },
    );
  }
}
