import '/flutter_flow/flutter_flow_util.dart';
import '/pages/common_app_button/common_app_button_widget.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'moz2uhxr' /* Please enter valid email addre... */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vkxkmg70' /* Please enter a valid email add... */,
      );
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '33z0lt9w' /* Please enter a valid password */,
      );
    }

    return null;
  }

  // Model for commonAppButton component.
  late CommonAppButtonModel commonAppButtonModel;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    passwordVisibility = false;
    textController2Validator = _textController2Validator;
    commonAppButtonModel = createModel(context, () => CommonAppButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    commonAppButtonModel.dispose();
  }
}
