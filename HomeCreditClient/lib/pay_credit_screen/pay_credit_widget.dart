import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class PayCreditWidget extends StatefulWidget {
  PayCreditWidget({Key? key}) : super(key: key);

  @override
  _PayCreditWidgetState createState() => _PayCreditWidgetState();
}

class _PayCreditWidgetState extends State<PayCreditWidget> {
  var pay = false;
  var mainColor = Colors.white;
  var colorText = redColor;
  void _goPay() {
    pay = true;
    mainColor = Colors.grey.withOpacity(0.9);
    setState(() {});
  }

  void _cancelPay() {
    pay = false;
    mainColor = Colors.white;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void _goHome() {
      Navigator.of(context).pushNamed('/scanner');
    }

    return Scaffold(
      backgroundColor: mainColor,
      body: Stack(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: _MainInfoWidget(),
          ),
          if (pay)
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 6),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Данные карты',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              TextButton(
                                  onPressed: _cancelPay,
                                  child: Icon(Icons.cancel_outlined,
                                      color: Colors.grey))
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: _CardInfoWidget(),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  width: 500.0,
                  height: 300.0,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: pay ? _goHome : _goPay,
                child: Text(
                  'Подтвердить и погасить',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: TextButton.styleFrom(
                    minimumSize: Size(350, 54),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    backgroundColor: redColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MainInfoWidget extends StatelessWidget {
  const _MainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image.asset(
          appImages.logo,
          height: 250,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('“Sulpak”, ТРЦ “Dostyk Plaza”',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '120 000  ₸',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Процентная ставка',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '12 %',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 1,
          width: 330,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Общая сумма кредита',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '134 400 ₸ ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.withOpacity(0.7)),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Выплачено',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '24 000 ₸ ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.withOpacity(0.7)),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('К оплате',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '120 000 ₸ ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.withOpacity(0.7)),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CardInfoWidget extends StatelessWidget {
  const _CardInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txt = TextEditingController();
    txt.text = "4443 3454 3423 4432";
    var date = TextEditingController();
    date.text = "24/01/2022";
    var CVV = TextEditingController();
    CVV.text = "322";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Card number',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey)),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 32,
          child: TextField(
              enabled: false,
              controller: txt,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 16.0),
                suffixIcon: Icon(Icons.copy_rounded),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                ),
              )),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  SizedBox(
                    width: 100,
                    child: Container(
                      height: 32,
                      child: TextField(
                          enabled: false,
                          controller: date,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 16.0),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.1)),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 34,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CVV',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  SizedBox(
                    width: 180,
                    child: Container(
                      height: 32,
                      child: TextField(
                          enabled: false,
                          controller: CVV,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            contentPadding: EdgeInsets.only(bottom: 16.0),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.1)),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
