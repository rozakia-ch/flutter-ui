import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/src/money_banking/constants/color_constants.dart';
import 'package:flutter_ui/src/money_banking/models/operation_model.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationItem extends StatelessWidget {
  const OperationItem({Key key, this.operation, this.isSelected}) : super(key: key);
  final OperationModel operation;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      width: 123.0,
      height: 123.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kTenBlackColor,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(8.0, 8.0),
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: isSelected ? kBlueColor : kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.network(isSelected ? operation.selectedIcon : operation.unselectedIcon),
          SizedBox(height: 9),
          Text(
            operation.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: isSelected ? kWhiteColor : kBlueColor,
            ),
          ),
        ],
      ),
    );
  }
}
