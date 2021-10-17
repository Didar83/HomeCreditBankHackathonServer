import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _toGo() {
      Navigator.of(context).pushNamed('/scanner');
    }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            appImages.logo,
          ),
          Image.asset(
            appImages.welcomeIcon,
            height: 292,
          ),
          SizedBox(
            height: 26,
          ),
          Text('Добро пожаловать в ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          Text('CREDIT.ME',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: redColor)),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 0),
            child: Text(
              'Оформляйте товар в кредит без каких-либо усилий',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: _toGo,
                child: Text(
                  'Начать',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: TextButton.styleFrom(
                    minimumSize: Size(350, 54),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    backgroundColor: redColor),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
