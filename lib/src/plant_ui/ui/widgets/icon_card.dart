import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key key, this.imgUrl}) : super(key: key);
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: _size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62.0,
      width: 62.0,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 15.0),
              blurRadius: 22.0,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15.0, -15.0),
              blurRadius: 20.0,
              color: Colors.white,
            )
          ]),
      child: SvgPicture.network(imgUrl),
    );
  }
}
