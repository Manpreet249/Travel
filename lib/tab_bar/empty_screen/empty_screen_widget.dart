import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_screen_model.dart';
export 'empty_screen_model.dart';

class EmptyScreenWidget extends StatefulWidget {
  const EmptyScreenWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<EmptyScreenWidget> createState() => _EmptyScreenWidgetState();
}

class _EmptyScreenWidgetState extends State<EmptyScreenWidget> {
  late EmptyScreenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Text(
              valueOrDefault<String>(
                widget.message,
                'No Data Found...',
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: const Color(0xFF333333),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
