import 'package:flutter/material.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/color_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/models/pet_category_model.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/widgets/pet_category_item.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/widgets/pet_item.dart';

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
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: [
          SizedBox(height: 30.0),
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
            height: 90.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DataConstants.petCategories.length,
                itemBuilder: (context, index) {
                  PetCategoryModel petCategory = DataConstants.petCategories[index];
                  return PetCategoryItem(petCategory: petCategory);
                }),
          ),
          PetItem(),
          // PetItem(),
        ],
      ),
    );
  }
}
