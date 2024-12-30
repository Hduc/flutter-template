import '/flutter_flow/flutter_flow_util.dart';
import '/pages/appbar/appbar_widget.dart';
import '/pages/common_app_button/common_app_button_widget.dart';
import 'plans_payment_method_page_widget.dart'
    show PlansPaymentMethodPageWidget;
import 'package:flutter/material.dart';

class PlansPaymentMethodPageModel
    extends FlutterFlowModel<PlansPaymentMethodPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    commonAppButtonModel = createModel(context, () => CommonAppButtonModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    commonAppButtonModel.dispose();
  }
}
