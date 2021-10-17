import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/const_styles.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class ConfirmSmsWidget extends StatefulWidget {
  ConfirmSmsWidget({Key? key}) : super(key: key);

  @override
  _ConfirmSmsWidgetState createState() => _ConfirmSmsWidgetState();
}

class _ConfirmSmsWidgetState extends State<ConfirmSmsWidget> {
  // _confirm_code() {
  //   Navigator.of(context).pushNamed('/confirm_sms/identification');
  // }

  @override
  Widget build(BuildContext context) {
    void _identificate() {
      Navigator.of(context).pushNamed('/identificate');
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
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
                onPressed: _identificate,
                child: Text(
                  'Далее',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                    minimumSize: Size(350, 54),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    backgroundColor: Colors.red),
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Введите код', style: TextLabelStyle.AuthTextStyle),
      SizedBox(
        height: 8,
      ),
      TextField(
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
          hintText: 'Код из смс',
          hintStyle: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.clear),
            iconSize: 18,
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      SizedBox(
        height: 32,
      ),
      Center(
        child: Text('ПЕРЕОТПРАВИТЬ КОД ( 2:29 )  ',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey)),
      ),
    ]);
  }
}
