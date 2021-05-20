import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';
import 'package:flutter_ui/src/plant_ui/ui/components/plant_home/featured_plant.dart';
import 'package:flutter_ui/src/plant_ui/ui/components/plant_home/header_with_search_box.dart';
import 'package:flutter_ui/src/plant_ui/ui/components/plant_home/recommend_plant.dart';

class HomePlantScreen extends StatelessWidget {
  const HomePlantScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: SvgPicture.network("${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/menu.svg"),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithSearchBox(),
              RecommendPlant(),
              SizedBox(height: kDefaultPadding / 2),
              FeaturedPlant(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          // height: 80.0,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(0, -10.0),
              blurRadius: 35.0,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ]),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.network(
                  "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/flower.svg",
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.network(
                  "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/heart-icon.svg",
                ),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.network(
                  "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/user-icon.svg",
                ),
                label: 'School',
              ),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            selectedItemColor: Colors.amber[800],
            onTap: (int index) {},
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
