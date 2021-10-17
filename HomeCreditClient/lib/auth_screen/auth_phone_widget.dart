import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/const_styles.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class AuthPhoneWidget extends StatefulWidget {
  AuthPhoneWidget({Key? key}) : super(key: key);

  @override
  _AuthPhoneWidgetState createState() => _AuthPhoneWidgetState();
}

class _AuthPhoneWidgetState extends State<AuthPhoneWidget> {
  @override
  Widget build(BuildContext context) {
    void _toConfirmCode() {
      Navigator.of(context).pushNamed('/identificate');
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(appImages.logo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: _SetPhoneWidget(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: _toConfirmCode,
                child: Text(
                  'Далее',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

class _SetPhoneWidget extends StatelessWidget {
  const _SetPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var UIN = TextEditingController();
    UIN.text = "990919090909";
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Введите ИИН', style: TextLabelStyle.AuthTextStyle),
      SizedBox(
        height: 8,
      ),
      TextField(
        controller: UIN,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.0),
          ),
          filled: true,
          fillColor: greyLightColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 19),
          hintText: '990919090909',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.clear),
            iconSize: 18,
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      SizedBox(
        height: 16,
      ),
      RichText(
          maxLines: 2,
          textAlign: TextAlign.start,
          text: TextSpan(children: [
            TextSpan(
                text: 'Используя приложение вы соглашаетесь ',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey)),
            TextSpan(
                text: ' условиями оферты',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.red))
          ])),
    ]);
  }
}
