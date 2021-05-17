import 'package:flutter/material.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/screens/adoption_screen.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/screens/drawer_screen.dart';

class PetAdoptionScreen extends StatelessWidget {
  const PetAdoptionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            AdoptionScreen(),
          ],
        ),
      ),
    );
  }
}
