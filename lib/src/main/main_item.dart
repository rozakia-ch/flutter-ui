import 'package:flutter/material.dart';
import 'package:flutter_ui/src/main/main_model.dart';
import 'package:flutter_ui/src/money_banking/ui/widgets/ImageNetwork.dart';

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
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: ImageNetwork(
                fit: BoxFit.cover,
                url: ui.image,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.9],
                  colors: [Colors.black.withOpacity(0.6), Colors.black.withOpacity(0.0)],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  ui.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    fontSize: 16,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
