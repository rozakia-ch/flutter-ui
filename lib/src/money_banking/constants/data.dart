import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/money_banking/models/card_model.dart';
import 'package:flutter_ui/src/money_banking/models/operation_model.dart';
import 'package:flutter_ui/src/money_banking/models/transaction_model.dart';

class Data {
  static List<CardModel> cards = [
    CardModel(
      user: "Amanda Alex",
      cardNumber: "**** **** **** 1425",
      cardExpired: "03-01-2023",
      cardType: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/mastercard_logo.png",
      cardBackground: 0xFF1E1E99,
      cardElementTop: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/ellipse_top_pink.svg",
      cardElementBottom:
          "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/ellipse_bottom_pink.svg",
    ),
    CardModel(
      user: "Amanda Alex",
      cardNumber: "**** **** **** 8287",
      cardExpired: "03-01-2025",
      cardType: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/mastercard_logo.png",
      cardBackground: 0xFFFF70A3,
      cardElementTop: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/ellipse_top_blue.svg",
      cardElementBottom:
          "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/ellipse_bottom_blue.svg",
    )
  ];
  static List<OperationModel> operations = [
    OperationModel(
        name: "Money\nTransfer",
        selectedIcon:
            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/money_transfer_white.svg",
        unselectedIcon:
            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/money_transfer_blue.svg"),
    OperationModel(
        name: "Bank\nWithdraw",
        selectedIcon: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/bank_withdraw_white.svg",
        unselectedIcon:
            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/bank_withdraw_blue.svg"),
    OperationModel(
        name: "Insight\nTracking",
        selectedIcon:
            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/insight_tracking_white.svg",
        unselectedIcon:
            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/insight_tracking_blue.svg"),
  ];
  static List<TransactionModel> transactions = [
    TransactionModel(
        name: "Uber Ride",
        photo: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/uber_photo.png",
        date: "1st Apr 2020",
        amount: "-\$35.214"),
    TransactionModel(
        name: "Nike Outlet",
        photo: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/nike_photo.png",
        date: "30th Mar 2020",
        amount: "-\$100.00"),
    TransactionModel(
        name: "Payment Received",
        photo: "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/user_photo.png",
        date: "15th Mar 2020",
        amount: "+\$250.00")
  ];
}
