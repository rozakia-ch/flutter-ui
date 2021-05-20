import 'package:flutter/material.dart';
import 'package:flutter_ui/src/main/main_model.dart';
import 'package:flutter_ui/src/main/ImageNetwork.dart';

class MainItem extends StatelessWidget {
  const MainItem({Key key, this.ui}) : super(key: key);
  final Ui ui;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ui.route)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
                color: Colors.grey.withOpacity(0.6),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: ImageNetwork(
                fit: BoxFit.cover,
                url: ui.image,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                ui.name,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
