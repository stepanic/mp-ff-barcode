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
    if (widget.barcodeType == 'EAN_13') {}

    if (widget.barcodeType == 'QR_CODE' || widget.barcodeType == 'QR') {
      return Container(
        child: BarcodeWidget(
          backgroundColor: Colors.white,
          barcode: Barcode.qrCode(),
          data: widget.data,
          width: widget.width,
          height: widget.height,
        ),
      );
    }

    return Container(
      child: Center(
        child: Text(
          'Not supported barcode type: ${widget.barcodeType}',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
