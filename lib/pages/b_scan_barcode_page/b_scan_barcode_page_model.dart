import '/flutter_flow/flutter_flow_util.dart';
import 'b_scan_barcode_page_widget.dart' show BScanBarcodePageWidget;
import 'package:flutter/material.dart';

class BScanBarcodePageModel extends FlutterFlowModel<BScanBarcodePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var barcodeSannerResult = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
