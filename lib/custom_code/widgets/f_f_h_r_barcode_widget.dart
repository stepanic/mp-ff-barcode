// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class FFHRBarcodeWidget extends StatefulWidget {
  const FFHRBarcodeWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<FFHRBarcodeWidget> createState() => _FFHRBarcodeWidgetState();
}

class _FFHRBarcodeWidgetState extends State<FFHRBarcodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BarcodeWidget(
      backgroundColor: Colors.white,
      barcode: Barcode.qrCode(),
      data: "Hello World",
      width: widget.width,
      height: widget.height,
    ));
  }
}
