import '/flutter_flow/flutter_flow_util.dart';
import 'about_page_widget.dart' show AboutPageWidget;
import 'package:flutter/material.dart';

class AboutPageModel extends FlutterFlowModel<AboutPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
