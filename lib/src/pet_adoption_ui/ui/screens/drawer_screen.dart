import 'package:flutter/material.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/color_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryGreen,
      padding: EdgeInsets.only(top: 50.0, bottom: 20.0, left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Miroslava Savitskaya",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("Active Status",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          Column(
            children: DataConstants.drawerItems
                .map(
                  (element) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(element.icon, color: Colors.white, size: 30.0),
                        SizedBox(width: 10.0),
                        Text(
                          element.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 2.0,
                height: 20.0,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Text(
                'Log out',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
