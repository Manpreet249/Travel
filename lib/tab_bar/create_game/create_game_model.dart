import '/flutter_flow/flutter_flow_util.dart';
import 'create_game_widget.dart' show CreateGameWidget;
import 'package:flutter/material.dart';

class CreateGameModel extends FlutterFlowModel<CreateGameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
