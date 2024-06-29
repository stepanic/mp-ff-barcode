import '/flutter_flow/flutter_flow_util.dart';
import 'd_decryption_scan_barcode_page_widget.dart'
    show DDecryptionScanBarcodePageWidget;
import 'package:flutter/material.dart';

class DDecryptionScanBarcodePageModel
    extends FlutterFlowModel<DDecryptionScanBarcodePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EncryptionKey widget.
  FocusNode? encryptionKeyFocusNode;
  TextEditingController? encryptionKeyTextController;
  String? Function(BuildContext, String?)? encryptionKeyTextControllerValidator;
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
    encryptionKeyFocusNode?.dispose();
    encryptionKeyTextController?.dispose();

    barcodeDataFocusNode?.dispose();
    barcodeDataTextController?.dispose();
  }
}
