// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import 'package:barcode_widget/barcode_widget.dart';

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

    if (widget.barcodeType == 'AZTEC') {
      barcode = Barcode.aztec();
    }

    if (widget.barcodeType == 'CODABAR') {
      barcode = Barcode.codabar();
    }

    if (widget.barcodeType == 'CODE_128') {
      barcode = Barcode.code128(escapes: true);
    }

    if (widget.barcodeType == 'CODE_39') {
      barcode = Barcode.code39();
    }

    if (widget.barcodeType == 'CODE_93') {
      barcode = Barcode.code39();
    }

    if (widget.barcodeType == 'DATA_MATRIX') {
      barcode = Barcode.code39();
    }

    if (widget.barcodeType == 'EAN_13') {
      barcode = Barcode.ean13(drawEndChar: true);
    }

    if (widget.barcodeType == 'QR_CODE' || widget.barcodeType == 'QR') {
      barcode = Barcode.qrCode();
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
