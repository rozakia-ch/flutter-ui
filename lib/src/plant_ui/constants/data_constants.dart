import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/plant_ui/models/plant_model.dart';

class DataConstants {
  static List<PlantModel> recommendeds = [
    PlantModel(
      image: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/image_1.png",
      title: "Samantha",
      country: "Russia",
      price: 440,
    ),
    PlantModel(
      image: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/image_2.png",
      title: "Angelica",
      country: "Russia",
      price: 440,
    ),
    PlantModel(
      image: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/image_3.png",
      title: "Samantha",
      country: "Russia",
      price: 440,
    )
  ];
  static List<PlantModel> featureds = [
    PlantModel(
      image: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/bottom_img_1.png",
    ),
    PlantModel(
      image: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/bottom_img_2.png",
    ),
  ];
}
