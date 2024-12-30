import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'common_app_button_model.dart';
export 'common_app_button_model.dart';

class CommonAppButtonWidget extends StatefulWidget {
  const CommonAppButtonWidget({
    super.key,
    this.text,
  });

  final String? text;

  @override
  State<CommonAppButtonWidget> createState() => _CommonAppButtonWidgetState();
}

class _CommonAppButtonWidgetState extends State<CommonAppButtonWidget> {
  late CommonAppButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonAppButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 54.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          valueOrDefault<String>(
            widget.text,
            'text',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Catamaran',
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
      ),
    );
  }
}
