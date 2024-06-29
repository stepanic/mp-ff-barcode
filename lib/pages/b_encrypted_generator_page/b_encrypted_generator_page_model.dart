import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'b_encrypted_generator_page_widget.dart'
    show BEncryptedGeneratorPageWidget;
import 'package:flutter/material.dart';

class BEncryptedGeneratorPageModel
    extends FlutterFlowModel<BEncryptedGeneratorPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for BarcodeTypeDropDown widget.
  String? barcodeTypeDropDownValue;
  FormFieldController<String>? barcodeTypeDropDownValueController;
  // State field(s) for BarcodeData widget.
  FocusNode? barcodeDataFocusNode;
  TextEditingController? barcodeDataTextController;
  String? Function(BuildContext, String?)? barcodeDataTextControllerValidator;
  // State field(s) for EncryptionKey widget.
  FocusNode? encryptionKeyFocusNode;
  TextEditingController? encryptionKeyTextController;
  String? Function(BuildContext, String?)? encryptionKeyTextControllerValidator;
  // Stores action output result for [Custom Action - shareBarcode] action in ShareBarcode widget.
  String? shareBarcodeStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    barcodeDataFocusNode?.dispose();
    barcodeDataTextController?.dispose();

    encryptionKeyFocusNode?.dispose();
    encryptionKeyTextController?.dispose();
  }
}
