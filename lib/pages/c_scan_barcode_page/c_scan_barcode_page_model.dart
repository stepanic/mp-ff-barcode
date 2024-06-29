import '/flutter_flow/flutter_flow_util.dart';
import 'c_scan_barcode_page_widget.dart' show CScanBarcodePageWidget;
import 'package:flutter/material.dart';

class CScanBarcodePageModel extends FlutterFlowModel<CScanBarcodePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var barcodeScannerResult = '';
  // State field(s) for BarcodeData widget.
  FocusNode? barcodeDataFocusNode;
  TextEditingController? barcodeDataTextController;
  String? Function(BuildContext, String?)? barcodeDataTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    barcodeDataFocusNode?.dispose();
    barcodeDataTextController?.dispose();
  }
}
