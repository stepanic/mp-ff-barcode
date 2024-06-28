import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

Future shareBarcode(
  BuildContext context, {
  required String? barcodeData,
}) async {
  if (!isWeb) {
    // Locally modified to use `shareXFiles` to share barcode as image
    // share barcode
    await Share.share(
      barcodeData!,
      sharePositionOrigin: getWidgetBoundingBox(context),
    );
  }
}
