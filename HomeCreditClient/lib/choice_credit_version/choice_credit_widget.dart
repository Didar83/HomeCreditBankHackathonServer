import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class ChoiceCreditVersion extends StatefulWidget {
  ChoiceCreditVersion({Key? key}) : super(key: key);

  @override
  _ChoiceCreditVersionState createState() => _ChoiceCreditVersionState();
}

class _ChoiceCreditVersionState extends State<ChoiceCreditVersion> {
  @override
  Widget build(BuildContext context) {
    void _confirmCredit() {
      Navigator.of(context).pushNamed('/confirm_credit');
    }

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              appImages.logo,
            ),
          ),
          _MainInfoCreditWidget(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: _confirmCredit,
                child: Text(
                  'Подтвердить и оформить',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
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
    ));
  }
}

class _MainInfoCreditWidget extends StatefulWidget {
  const _MainInfoCreditWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_MainInfoCreditWidget> createState() => _MainInfoCreditWidgetState();
}

class _MainInfoCreditWidgetState extends State<_MainInfoCreditWidget> {
  var backColor6 = Colors.white;
  var textColor6 = redColor;
  var backColor12 = Colors.white;
  var textColor12 = redColor;
  var backColor24 = Colors.white;
  var textColor24 = redColor;
  void _sixm() {
    backColor6 = redColor;
    textColor6 = Colors.white;
    backColor12 = Colors.white;
    textColor12 = redColor;
    backColor24 = Colors.white;
    textColor24 = redColor;
    setState(() {});
  }

  void _twelm() {
    backColor6 = Colors.white;
    textColor6 = redColor;
    backColor12 = redColor;
    textColor12 = Colors.white;
    backColor24 = Colors.white;
    textColor24 = redColor;
    setState(() {});
  }

  void _twetm() {
    backColor6 = Colors.white;
    textColor6 = redColor;
    backColor12 = Colors.white;
    textColor12 = redColor;
    backColor24 = redColor;
    textColor24 = Colors.white;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Сумма',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 6,
        ),
        Text('120 000 ₸',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.w700, color: Colors.red)),
        SizedBox(
          height: 24,
        ),
        Text(
          'Выберите срок',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _sixm,
              child: Text(
                '6 мес',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: textColor6),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(43, 19),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  backgroundColor: backColor6,
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.red,
                  )),
            ),
            SizedBox(
              width: 14,
            ),
            ElevatedButton(
              onPressed: _twelm,
              child: Text(
                '12 мес',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: textColor12),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(43, 19),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  backgroundColor: backColor12,
                  side: BorderSide(
                    width: 1.0,
                    color: redColor,
                  )),
            ),
            SizedBox(
              width: 14,
            ),
            ElevatedButton(
              onPressed: _twetm,
              child: Text(
                '24 мес',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: textColor24),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(43, 19),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  backgroundColor: backColor24,
                  side: BorderSide(
                    width: 1.0,
                    color: redColor,
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text('Номинальная ставка',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 9,
                  ),
                  Text('12%',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 1,
                height: 20,
                color: Colors.grey,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  Text('Переплата по кредиту',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 9,
                  ),
                  Text('32 000 ₸',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Center(
            child: Text('Ежемесячный платеж составит:',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500))),
        SizedBox(
          height: 12,
        ),
        Center(
            child: Text('5 600 ₸',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.red)))
      ],
    );
  }
}
