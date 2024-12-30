import '/flutter_flow/flutter_flow_util.dart';
import '/pages/appbar/appbar_widget.dart';
import 'security_settings_page_widget.dart' show SecuritySettingsPageWidget;
import 'package:flutter/material.dart';

class SecuritySettingsPageModel
    extends FlutterFlowModel<SecuritySettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
  }
}
