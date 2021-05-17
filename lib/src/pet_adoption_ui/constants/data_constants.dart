import 'package:flutter/material.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/pet_adoption_ui/models/drawer_model.dart';
import 'package:flutter_ui/src/pet_adoption_ui/models/pet_category_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataConstants {
  static List<PetCategoryModel> petCategories = [
    PetCategoryModel(
      name: 'Cats',
      iconPath: '${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/cat.png',
    ),
    PetCategoryModel(
      name: 'Dogs',
      iconPath: '${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/dog.png',
    ),
    PetCategoryModel(
      name: 'Bunnies',
      iconPath: '${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/rabbit.png',
    ),
    PetCategoryModel(
      name: 'Parrots',
      iconPath: '${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/parrot.png',
    ),
    PetCategoryModel(
      name: 'Horses',
      iconPath: '${ApiConstants.BASE_URL_IMAGE}/pet_adoption_ui/horse.png',
    ),
  ];
  static List<DrawerModel> drawerItems = [
    DrawerModel(icon: FontAwesomeIcons.paw, title: 'Adoption'),
    DrawerModel(icon: Icons.mail, title: 'Donation'),
    DrawerModel(icon: FontAwesomeIcons.plus, title: 'Add pet'),
    DrawerModel(icon: Icons.favorite, title: 'Favorites'),
    DrawerModel(icon: Icons.mail, title: 'Messages'),
    DrawerModel(icon: FontAwesomeIcons.userAlt, title: 'Profile'),
  ];
  static List<BoxShadow> shadowList = [
    BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
  ];
}
