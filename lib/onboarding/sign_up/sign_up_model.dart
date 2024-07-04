import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please  enter first name.';
    }

    if (val.length < 3) {
      return 'First name must be greater than 2 characters.';
    }
    if (val.length > 18) {
      return 'First name should not be greater than 18 characters.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please  enter last name.';
    }

    if (val.length < 3) {
      return 'Last name must be greater than 2 characters.';
    }
    if (val.length > 18) {
      return 'Last name should not be greater than 18 characters.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter  email address.';
    }

    if (val.length > 100) {
      return 'Email address should not be greater than 100 characters.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter valid email address.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please select address';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter password';
    }

    if (val.length < 6) {
      return 'Password must be atleast 6 characters long';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (SignUp)] action in Button widget.
  ApiCallResponse? apiResulty3l;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    passwordVisibility = false;
    textController5Validator = _textController5Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }
}
