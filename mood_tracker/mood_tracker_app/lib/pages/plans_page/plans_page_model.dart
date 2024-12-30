import '/flutter_flow/flutter_flow_util.dart';
import '/pages/appbar/appbar_widget.dart';
import '/pages/common_app_button/common_app_button_widget.dart';
import 'plans_page_widget.dart' show PlansPageWidget;
import 'package:flutter/material.dart';

class PlansPageModel extends FlutterFlowModel<PlansPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel1;
  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel2;
  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel3;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    commonAppButtonModel1 = createModel(context, () => CommonAppButtonModel());
    commonAppButtonModel2 = createModel(context, () => CommonAppButtonModel());
    commonAppButtonModel3 = createModel(context, () => CommonAppButtonModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    commonAppButtonModel1.dispose();
    commonAppButtonModel2.dispose();
    commonAppButtonModel3.dispose();
  }
}
