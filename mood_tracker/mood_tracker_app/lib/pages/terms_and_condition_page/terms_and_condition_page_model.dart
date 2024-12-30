import '/flutter_flow/flutter_flow_util.dart';
import '/pages/appbar/appbar_widget.dart';
import 'terms_and_condition_page_widget.dart' show TermsAndConditionPageWidget;
import 'package:flutter/material.dart';

class TermsAndConditionPageModel
    extends FlutterFlowModel<TermsAndConditionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
  }
}
