import 'dart:io';

import 'package:home_bank_client/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('app_images assets test', () {
    expect(true, File(appImages.identificate).existsSync());
    expect(true, File(appImages.logo).existsSync());
    expect(true, File(appImages.qrCheck).existsSync());
    expect(true, File(appImages.scannerIcon).existsSync());
    expect(true, File(appImages.welcomeIcon).existsSync());
  });
}
