import '/flutter_flow/flutter_flow_util.dart';
import '/pages/appbar/appbar_widget.dart';
import '/pages/common_app_button/common_app_button_widget.dart';
import 'forgot_page_widget.dart' show ForgotPageWidget;
import 'package:flutter/material.dart';

class ForgotPageModel extends FlutterFlowModel<ForgotPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'k0na8zdx' /* Please enter a valid email add... */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5wpaw9dw' /* Please enter a valid email add... */,
      );
    }
    return null;
  }

  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    textControllerValidator = _textControllerValidator;
    commonAppButtonModel = createModel(context, () => CommonAppButtonModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    commonAppButtonModel.dispose();
  }
}
