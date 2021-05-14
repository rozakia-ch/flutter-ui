import 'package:flutter/material.dart';

class RatingIndicator extends StatelessWidget {
  const RatingIndicator({Key key, this.rating}) : super(key: key);
  final int rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(rating, (index) => _buildStar(context, index)),
    );
  }

  Widget _buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: Colors.amber,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: Colors.amber,
      );
    }
    return icon;
  }
}
