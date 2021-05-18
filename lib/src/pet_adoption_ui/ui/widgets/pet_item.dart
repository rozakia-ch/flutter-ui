import 'package:flutter/material.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/color_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/screens/pet_detail_screen.dart';

class PetItem extends StatelessWidget {
  const PetItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PetDetailScreen()),
        );
      },
      child: Container(
        height: 240.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[300],
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: DataConstants.shadowList,
                    ),
                    margin: EdgeInsets.only(top: 50.0),
                  ),
                  Align(
                    child: Hero(
                      tag: 1,
                      child: Image.network(
                        "${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/pet-cat2.png",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  boxShadow: DataConstants.shadowList,
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sola",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        // Icon(
                        //   FontAwesomeIcons.marsStroke,
                        //   color: Colors.grey,
                        // ),
                      ],
                    ),
                    Text(
                      "Abyssinan cat",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "2 years old",
                      style: TextStyle(
                        // fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorConstants.primaryGreen,
                        ),
                        Text(
                          "Distance: 3.6 km",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
