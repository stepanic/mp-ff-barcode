import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_generator_page_widget.dart' show AGeneratorPageWidget;
import 'package:flutter/material.dart';

class AGeneratorPageModel extends FlutterFlowModel<AGeneratorPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for BarcodeTypeDropDown widget.
  String? barcodeTypeDropDownValue;
  FormFieldController<String>? barcodeTypeDropDownValueController;
  // State field(s) for BarcodeData widget.
  FocusNode? barcodeDataFocusNode;
  TextEditingController? barcodeDataTextController;
  String? Function(BuildContext, String?)? barcodeDataTextControllerValidator;
  // Stores action output result for [Custom Action - shareBarcode] action in ShareBarcode widget.
  String? shareBarcodeStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    barcodeDataFocusNode?.dispose();
    barcodeDataTextController?.dispose();
  }
}
