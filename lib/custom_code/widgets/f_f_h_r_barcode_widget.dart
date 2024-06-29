// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:barcode_widget/barcode_widget.dart';

class FFHRBarcodeWidget extends StatefulWidget {
  const FFHRBarcodeWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
    this.barcodeType,
  });

  final double? width;
  final double? height;
  final String data;
  final String? barcodeType;

  @override
  State<FFHRBarcodeWidget> createState() => _FFHRBarcodeWidgetState();
}

class _FFHRBarcodeWidgetState extends State<FFHRBarcodeWidget> {
  @override
  Widget build(BuildContext context) {
    Barcode? barcode;

    switch (widget.barcodeType) {
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

    if (barcode != null) {
      return Container(
        child: BarcodeWidget(
          backgroundColor: Colors.white,
          barcode: barcode,
          data: widget.data,
          drawText: true,
          textPadding: 5,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32.0,
          ),
          width: widget.width,
          height: widget.height,
          errorBuilder: (context, error) => Center(
            child: Text(
              error,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

    return Container(
      child: Center(
        child: Text(
          'Not supported barcode type: ${widget.barcodeType}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
