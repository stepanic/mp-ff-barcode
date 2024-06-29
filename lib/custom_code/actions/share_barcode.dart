// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: always_specify_types

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_selector/file_selector.dart';
import 'package:share_plus/share_plus.dart';
import 'package:barcode_image/barcode_image.dart';
import 'package:image/image.dart' as packageImage;

Future<String> shareBarcode(
  String barcodeType,
  String barcodeData,
  int barcodeWidth,
  int barcodeHeight,
) async {
  // Create an image
  final image = packageImage.Image(
    width: barcodeWidth,
    height: barcodeHeight,
  );

  // Fill it with a solid color (white)
  packageImage.fill(image, color: packageImage.ColorRgb8(255, 255, 255));

  // Draw the barcode
  drawBarcode(image, Barcode.qrCode(), barcodeData, font: packageImage.arial24);

  final imageData = packageImage.encodePng(image);

  final String? initialDirectory =
      kIsWeb ? null : (await getApplicationDocumentsDirectory()).path;

  final String? tempDirectory =
      kIsWeb ? null : (await getTemporaryDirectory()).path;

  print(initialDirectory);
  print(tempDirectory);

  final location = await getSaveLocation();

  final filePath = '${tempDirectory}/barcode.png';

  final file = XFile.fromData(
    Uint8List.fromList(imageData),
    name: filePath,
    mimeType: 'image/png',
  );
  await file.saveTo(filePath);

  // final location = await getSaveLocation();
  // if (location != null) {
  //   final file = XFile.fromData(
  //     Uint8List.fromList(imageData),
  //     name: 'barcode.png',
  //     mimeType: 'image/png',
  //   );
  //   await file.saveTo(location.path);
  // }

  // Save the image
  // File('test.png').writeAsBytesSync(imageData);

  final result = await Share.shareXFiles([XFile(filePath)], text: 'Barcode');

  await File(filePath).delete();

  if (result.status == ShareResultStatus.success) {
    print('Thank you for sharing the picture!');
  }

  if (result.status == ShareResultStatus.dismissed) {
    print('Did you not like the pictures?');
  }

  if (result.status == ShareResultStatus.unavailable) {
    print('Share status unavailable');
  }

  // File('barcode.png').deleteSync();

  return 'OK';
}
