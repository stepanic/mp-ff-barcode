// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: always_specify_types

import 'dart:io';

import 'package:share_plus/share_plus.dart';
import 'package:barcode_image/barcode_image.dart';
import 'package:image/image.dart' as packageImage;

Future<String> shareFile(
  String barcodeType,
  String barcodeData,
) async {
  // Create an image
  final image = packageImage.Image(
    width: 300,
    height: 300,
  );

  // Fill it with a solid color (white)
  packageImage.fill(image, color: packageImage.ColorRgb8(255, 255, 255));

  // Draw the barcode
  drawBarcode(image, Barcode.qrCode(), barcodeData, font: packageImage.arial24);

  // Save the image
  File('test.png').writeAsBytesSync(packageImage.encodePng(image));

  final result =
      await Share.shareXFiles([XFile('test.png')], text: 'Great picture');

  if (result.status == ShareResultStatus.success) {
    print('Thank you for sharing the picture!');
  }

  if (result.status == ShareResultStatus.dismissed) {
    print('Did you not like the pictures?');
  }

  if (result.status == ShareResultStatus.unavailable) {
    print('Share status unavailable');
  }

  File('test.png').deleteSync();

  return 'OK';
}
