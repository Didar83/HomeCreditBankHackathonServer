import 'package:flutter/material.dart';
import 'package:home_bank_client/resources/resources.dart';

class MyCreditList extends StatefulWidget {
  MyCreditList({Key? key}) : super(key: key);

  @override
  _MyCreditListState createState() => _MyCreditListState();
}

class _MyCreditListState extends State<MyCreditList> {
  var open = true;
  void _openInfo() {
    open = !open;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void _goPay() {
      Navigator.of(context).pushNamed('/pay_credit');
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: ListView(
                children: <Widget>[
                  Image.asset(
                    appImages.logo,
                    height: 160,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 4),
                      child: Container(
                          height: 66,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.1),
                              border: Border.all(
                                color: Colors.red,
                                width: 1,
                              )),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text('до 24 октября',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Погасить',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red),
                                    ),
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      minimumSize: Size(53, 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      backgroundColor:
                                          Colors.red.withOpacity(0.1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: TextButton(
                        onPressed: _openInfo,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Шкаф кухонный духовой...',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                Text('21.10.2021',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))
                              ],
                            )),
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
                  if (open == true) _dropInfoCredit(),
                  Container(
                    height: 1,
                    width: 330,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Холодильник белый BIC ...',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                Text('01.08.2021',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))
                              ],
                            )),
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
                    height: 40,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: _goPay,
                      child: Text(
                        'Погасить досрочно',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: Size(350, 54),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          backgroundColor: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ],
        ));
  }
}

class _dropInfoCredit extends StatelessWidget {
  const _dropInfoCredit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text('Чек',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600))),
              Icon(Icons.arrow_drop_up, size: 30, color: Colors.red)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ИИН',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                    SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      child: Text(
                        '990919090909',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.end,
                        maxLines: 2,
                      ),
                    ),
                  ],
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
                    Text('Дата и время',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                    SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      child: Text(
                        '12.02.2021 18:03',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
              ],
            ),
          ),
          Image.asset(appImages.qrCheck),
          SizedBox(
            height: 26,
          )
        ],
      ),
    );
  }
}
