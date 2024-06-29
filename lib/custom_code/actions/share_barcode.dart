// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:barcode_image/barcode_image.dart';
import 'package:image/image.dart' as packageImage;

Future<String> shareBarcode(
  String barcodeType,
  String barcodeData,
  int barcodeWidth,
  int barcodeHeight,
) async {
  if (barcodeData.isEmpty) {
    return 'BARCODE_DATA_IS_EMPTY';
  }

  Barcode? barcode;

  switch (barcodeType) {
    case 'AZTEC':
      barcode = Barcode.aztec();
      break;
    case 'CODABAR':
      barcode = Barcode.codabar();
      break;
    case 'CODE_128':
      barcode = Barcode.code128(escapes: true);
      break;
    case 'CODE_39':
      barcode = Barcode.code39();
      break;
    case 'CODE_93':
      barcode = Barcode.code93();
      break;
    case 'DATA_MATRIX':
      barcode = Barcode.dataMatrix();
      break;
    case 'EAN_13':
      barcode = Barcode.ean13(drawEndChar: true);
      break;
    case 'EAN_2':
      barcode = Barcode.ean2();
      break;
    case 'EAN_5':
      barcode = Barcode.ean5();
      break;
    case 'EAN_8':
      barcode = Barcode.ean8(drawSpacers: true);
      break;
    case 'GS1_128':
      barcode = Barcode.gs128(useCode128A: false, useCode128B: false);
      break;
    case 'ISBN':
      barcode = Barcode.isbn(drawEndChar: true);
      break;
    case 'ITF':
      barcode = Barcode.itf(zeroPrepend: true);
      break;
    case 'ITF_14':
      barcode = Barcode.itf14();
      break;
    case 'ITF_16':
      barcode = Barcode.itf16();
      break;
    case 'PDF417':
      barcode = Barcode.pdf417();
      break;
    case 'QR_CODE':
    case 'QR':
      barcode = Barcode.qrCode(
          // errorCorrectLevel: BarcodeQRCorrectionLevel.high,
          // typeNumber: 8,
          );
      break;
    case 'RM4SCC':
      barcode = Barcode.rm4scc();
      break;
    case 'TELEPEN':
      barcode = Barcode.telepen();
      break;
    case 'UPC_A':
      barcode = Barcode.upcA();
      break;
    case 'UPC_E':
      barcode = Barcode.upcE();
      break;
    default:
      barcode = null;
      break;
  }

  if (barcode == null) {
    return 'BARCODE_NOT_SUPPORTED';
  }

  // Create an image
  final image = packageImage.Image(
    width: barcodeWidth,
    height: barcodeHeight,
  );

  // Fill it with a solid color (white)
  packageImage.fill(image, color: packageImage.ColorRgb8(255, 255, 255));

  // Draw the barcode
  try {
    drawBarcode(image, barcode, barcodeData, font: packageImage.arial48);
  } catch (e) {
    return 'BARCODE_DRAWING_FAILED';
  }

  // Encode the image as PNG
  final imageData = packageImage.encodePng(image);

  // Get the temporary directory
  final String? tempDirectory =
      kIsWeb ? null : (await getTemporaryDirectory()).path;

  // Create a temporary file path
  final filePath = '${tempDirectory}/barcode.png';

  // Save the image as temporary file
  final file = XFile.fromData(
    Uint8List.fromList(imageData),
    name: filePath,
    mimeType: 'image/png',
  );
  await file.saveTo(filePath);

  // Share the image over Share API
  final result = await Share.shareXFiles(
    [
      XFile(
        filePath,
        mimeType: 'image/png',
        lastModified: DateTime.now(),
      ),
    ],
    subject: 'Barcode - ${barcodeType} - ${DateTime.timestamp().toString()}',
    text: 'Barcode - ${barcodeType}\n\n${barcodeData}',
  );

  // Delete the temporary file
  await File(filePath).delete();

  if (result.status == ShareResultStatus.success) {
    return 'OK';
  }

  if (result.status == ShareResultStatus.dismissed) {
    return 'SHARE_CANCELLED';
  }

  if (result.status == ShareResultStatus.unavailable) {
    return 'SHARE_UNAVAILABLE';
  }

  return 'OK';
}
