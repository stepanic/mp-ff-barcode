import '/flutter_flow/flutter_flow_util.dart';
import 'e_about_page_widget.dart' show EAboutPageWidget;
import 'package:flutter/material.dart';

class EAboutPageModel extends FlutterFlowModel<EAboutPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
