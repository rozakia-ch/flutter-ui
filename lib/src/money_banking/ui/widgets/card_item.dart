import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/src/money_banking/constants/color_constants.dart';
import 'package:flutter_ui/src/money_banking/models/card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key key, this.card}) : super(key: key);
  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      height: 199.0,
      width: 344.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
        color: Color(card.cardBackground),
      ),
      child: Stack(
        children: [
          Positioned(
            child: SvgPicture.network(card.cardElementTop),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SvgPicture.network(card.cardElementBottom),
          ),
          Positioned(
            left: 29.0,
            top: 48.0,
            child: Text(
              "CARD NUMBER",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
              ),
            ),
          ),
          Positioned(
            left: 49.0,
            top: 65.0,
            child: Text(
              card.cardNumber,
              style: GoogleFonts.inter(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
              ),
            ),
          ),
          Positioned(
            right: 21.0,
            top: 35.0,
            child: Image.network(
              card.cardType,
              width: 27,
              height: 27,
            ),
          ),
          Positioned(
            left: 29.0,
            bottom: 45.0,
            child: Text(
              "CARD HOLDER",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
              ),
            ),
          ),
          Positioned(
            left: 29.0,
            bottom: 21.0,
            child: Text(
              card.user,
              style: GoogleFonts.inter(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
              ),
            ),
          ),
          Positioned(
            left: 202.0,
            bottom: 45.0,
            child: Text(
              "EXPIRED DATE",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
              ),
            ),
          ),
          Positioned(
            left: 202.0,
            bottom: 21.0,
            child: Text(
              card.cardExpired,
              style: GoogleFonts.inter(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
