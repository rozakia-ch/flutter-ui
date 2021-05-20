import 'package:flutter/material.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';

class ButtonMore extends StatelessWidget {
  const ButtonMore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onPressed: () {},
      child: Text(
        "More",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
