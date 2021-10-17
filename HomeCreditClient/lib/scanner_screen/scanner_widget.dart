import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_bank_client/constants/constatnts.dart';
import 'package:home_bank_client/resources/resources.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerWidget extends StatefulWidget {
  ScannerWidget({Key? key}) : super(key: key);

  @override
  _ScannerWidgetState createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  String qrCode = 'Unknown';

  @override
  void _toScann() {
    Navigator.of(context).pushNamed('/infoProduct');
  }

  void _myLoan() {
    Navigator.of(context).pushNamed('/my_credit');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            appImages.logo,
          ),
          SizedBox(
            height: 66,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: TextButton(
                onPressed: _myLoan,
                child: Row(
                  children: [
                    Expanded(
                        child: Text('Мои кредиты',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black))),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.red,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            width: 360,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: TextInfoWidget(),
          ),
          SizedBox(
            height: 94,
          ),
          Image.asset(appImages.scannerIcon),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ElevatedButton(
                  onPressed: scanQRCode,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Сканировать',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(350, 54),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      backgroundColor: redColor),
                ),
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

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
      print(this.qrCode);
      if (this.qrCode != null) {
        Navigator.of(context).pushNamed('/infoProduct');
      }
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}

class TextInfoWidget extends StatelessWidget {
  const TextInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Отсканируйте товар',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
            'Чтобы взять товар в кредит вам необходимо отсканировать штрих-код',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    );
  }
}
