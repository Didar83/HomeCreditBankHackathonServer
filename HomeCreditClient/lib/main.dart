import 'package:flutter/material.dart';
import 'package:home_bank_client/aply_loan_part_one/aply_loan_part_one_widget.dart';
import 'package:home_bank_client/aply_loan_part_three/aply_loan_part_three_widget.dart';
import 'package:home_bank_client/aply_loan_part_two/aply_loan_part_two_widget.dart';
import 'package:home_bank_client/auth_screen/auth_phone_widget.dart';
import 'package:home_bank_client/auth_screen/confirm_sms_widget.dart';
import 'package:home_bank_client/choice_credit_version/choice_credit_widget.dart';
import 'package:home_bank_client/identification_screen/identification_face_widget.dart';
import 'package:home_bank_client/my_credit_list/my_credit_list.dart';
import 'package:home_bank_client/pay_credit_screen/pay_credit_widget.dart';
import 'package:home_bank_client/scanner_screen/scanner_widget.dart';
import 'package:home_bank_client/welcome_screen/welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => WelcomeWidget(),
        '/scanner': (context) => ScannerWidget(),
        '/infoProduct': (context) => AplyLoanPartOneWidget(),
        '/getNumber': (context) => AuthPhoneWidget(),
        '/identificate': (context) => IdentificationFaceWidget(),
        '/choice_credit': (context) => ChoiceCreditVersion(),
        '/confirm_credit': (context) => AplyLoanPartThreeWidget(),
        '/my_credit': (context) => MyCreditList(),
        '/pay_credit': (context) => PayCreditWidget(),
      },
    );
  }
}
