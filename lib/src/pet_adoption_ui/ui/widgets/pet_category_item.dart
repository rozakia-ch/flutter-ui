import 'package:flutter/material.dart';
import 'package:flutter_ui/src/pet_adoption_ui/constants/data_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/models/pet_category_model.dart';

class PetCategoryItem extends StatelessWidget {
  const PetCategoryItem({Key key, this.petCategory}) : super(key: key);
  final PetCategoryModel petCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: DataConstants.shadowList,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.network(
            petCategory.iconPath,
            height: 50.0,
            width: 50.0,
            color: Colors.grey[700],
          ),
        ),
        Text(
          petCategory.name,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
