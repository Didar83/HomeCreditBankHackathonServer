import 'package:flutter/material.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';

class AplyLoanPartOneWidget extends StatelessWidget {
  const AplyLoanPartOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _getNumber() {
      Navigator.of(context).pushNamed('/getNumber');
    }

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            appImages.logo,
          ),
          SizedBox(
            height: 66,
          ),
          _LoanInfoWidget(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: _getNumber,
                child: Text(
                  'Оформить кредит',
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
    ));
  }
}

class _LoanInfoWidget extends StatelessWidget {
  const _LoanInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Магазин',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 8,
        ),
        Text(
          '“Sulpak”, ТРЦ “Dostyk Plaza”, Самал-2, 111, Алматы',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        SizedBox(
          height: 18,
        ),
        Text('Название товара',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 8,
        ),
        Text(
          'Шкаф электрический духовой BEKO BIC 22100X',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        SizedBox(
          height: 18,
        ),
        Text('Стоимость',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 6,
        ),
        Text(
          '120 000 ₸',
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.w700, color: Colors.red),
        )
      ],
    );
  }
}
