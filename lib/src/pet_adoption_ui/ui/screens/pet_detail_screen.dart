import 'package:flutter/material.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/color_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PetDetailScreen extends StatelessWidget {
  const PetDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey.shade300,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: 1,
                  child: Image.network(
                    "${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/pet-cat2.png",
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 120.0,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: DataConstants.shadowList,
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sola",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.marsStroke,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Abyssinan cat",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "2 years old",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorConstants.primaryGreen,
                        ),
                        Text(
                          "5 Bulvarno-Kudriavska Street, Kyiv",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey.shade600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 240.0,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: Column(
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
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Owner", style: TextStyle(color: Colors.grey.shade600)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "My job requires moving to another country. I don't have the opportunity to take the cat with me. Iam looking for good people who will shelter my Sola.",
                      style: TextStyle(color: Colors.grey.shade600),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                          height: 60.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: ColorConstants.primaryGreen,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: DataConstants.shadowList,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: ColorConstants.primaryGreen,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: DataConstants.shadowList,
                            ),
                            child: Center(
                              child: Text(
                                "Adoption",
                                style: TextStyle(color: Colors.white, fontSize: 24.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
