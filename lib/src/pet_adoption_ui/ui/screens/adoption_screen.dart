import 'package:flutter/material.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/color_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/models/pet_category_model.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/widgets/pet_category_item.dart';

class AdoptionScreen extends StatefulWidget {
  const AdoptionScreen({Key key}) : super(key: key);

  @override
  _AdoptionScreenState createState() => _AdoptionScreenState();
}

class _AdoptionScreenState extends State<AdoptionScreen> {
  double _xOffset = 0, _yOffset = 0, _scaleFactor = 1.0;
  bool _isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(_xOffset, _yOffset, 0)..scale(_scaleFactor),
      duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(_isDrawerOpen ? 40.0 : 0.0),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => setState(() {
                          _xOffset = 0.0;
                          _yOffset = 0.0;
                          _scaleFactor = 1.0;
                          _isDrawerOpen = false;
                        }),
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () => setState(() {
                          _xOffset = 230.0;
                          _yOffset = 150.0;
                          _scaleFactor = 0.6;
                          _isDrawerOpen = true;
                        }),
                      ),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorConstants.primaryGreen,
                        ),
                        Text("Indonesia"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text("Search pet to adopt"),
                Icon(Icons.settings),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DataConstants.petCategories.length,
                itemBuilder: (context, index) {
                  PetCategoryModel petCategory = DataConstants.petCategories[index];
                  return PetCategoryItem(petCategory: petCategory);
                }),
          ),
          Container(
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
                        child: Image.network(
                          "${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/pet-cat2.png",
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
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
