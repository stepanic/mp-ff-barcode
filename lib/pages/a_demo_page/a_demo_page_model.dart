import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_demo_page_widget.dart' show ADemoPageWidget;
import 'package:flutter/material.dart';

class ADemoPageModel extends FlutterFlowModel<ADemoPageWidget> {
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
