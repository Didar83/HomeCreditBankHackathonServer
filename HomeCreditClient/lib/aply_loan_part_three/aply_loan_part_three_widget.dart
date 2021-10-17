import 'package:flutter/material.dart';
import 'package:home_bank_client/resources/resources.dart';

class AplyLoanPartThreeWidget extends StatefulWidget {
  AplyLoanPartThreeWidget({Key? key}) : super(key: key);

  @override
  _AplyLoanPartThreeWidgetState createState() =>
      _AplyLoanPartThreeWidgetState();
}

class _AplyLoanPartThreeWidgetState extends State<AplyLoanPartThreeWidget> {
  @override
  Widget build(BuildContext context) {
    void _goToMain() {
      Navigator.of(context).pushNamed('/scanner');
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(appImages.logo),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
              child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 1,
                      )),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_outlined,
                          color: Colors.lightGreen,
                          size: 32.0,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Center(
                            child: Text('ОДОБРЕНО',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.lightGreen)))
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 24,
            ),
            _MainInfoCredit(),
            SizedBox(
              height: 24,
            ),
            Image.asset(appImages.qrCheck),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: _goToMain,
                  child: Text(
                    'На главную',
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
      ),
    );
  }
}

class _MainInfoCredit extends StatelessWidget {
  const _MainInfoCredit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Магазин',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                '“Sulpak”, ТРЦ “Dostyk Plaza”, Самал-2, 111, Алматы',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Название',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                'Шкаф электрический духовой BEKO BIC 22100X',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.end,
                maxLines: 2,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Артикул',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                'KZ1238127-910',
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
        Container(
          width: 320,
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Способ покуки',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: Text(
                'Кредит',
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
            Text('Общая сумма',
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
                    color: Colors.red),
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
