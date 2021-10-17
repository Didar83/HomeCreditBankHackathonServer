import 'package:flutter/material.dart';
import 'package:home_bank_client/resources/resources.dart';

class IdentificationFaceWidget extends StatelessWidget {
  const IdentificationFaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _toTwoStep() {
      Navigator.of(context).pushNamed('/choice_credit');
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
            Image.asset(
              appImages.logo,
              height: 132,
              width: 92,
            ),
            Image.asset(
              appImages.identificate,
              height: 139,
              width: 126,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 21),
              child: Text('Идентификация',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            ),
            _IdentificateInfoWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: _toTwoStep,
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
        ));
  }
}

class _IdentificateInfoWidget extends StatelessWidget {
  const _IdentificateInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 44,
                  width: 44,
                  color: Color(0xFFF8F8F8),
                  child: Icon(Icons.person)),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Text('Снимите головной убор и другие аксессуары',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  height: 44,
                  width: 44,
                  color: Color(0xFFF8F8F8),
                  child: Icon(Icons.people)),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Text('Пройти проверку за другого человека невозможно',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  height: 44,
                  width: 44,
                  color: Color(0xFFF8F8F8),
                  child: Icon(Icons.smartphone)),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Text(
                    'Не закрывайте приложение до звершения сканирования',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
