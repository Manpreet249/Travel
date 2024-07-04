import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/house-thailand-with-car-parked-front-it@3x.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xA7000000),
                ),
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 44.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/Icon_feather-arrow-left@3x.png',
                                        width: 35.0,
                                        height: 20.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Complete Profile',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.0,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.safePop();
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Icon_feather-arrow-left@3x.png',
                                          width: 35.0,
                                          height: 20.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          'First Name',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 10.0, 25.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController1',
                                          const Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Enter First Name',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0x4DFFFFFF),
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF333333),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          suffixIcon: _model.textController1!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController1
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: const Icon(
                                                    Icons.clear,
                                                    color: Colors.white,
                                                    size: 20.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLength: 18,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: TextInputType.name,
                                        cursorColor: Colors.white,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Last Name',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 10.0, 25.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController2',
                                          const Duration(milliseconds: 200),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Enter Last Name',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0x4DFFFFFF),
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF333333),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          suffixIcon: _model.textController2!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController2
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: const Icon(
                                                    Icons.clear,
                                                    color: Colors.white,
                                                    size: 20.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLength: 18,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: TextInputType.name,
                                        cursorColor: Colors.white,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Email Address',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 10.0, 25.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController3',
                                            const Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Enter Email Address',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: const Color(0x4DFFFFFF),
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0xFF333333),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            suffixIcon: _model.textController3!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController3
                                                          ?.clear();
                                                      setState(() {});
                                                    },
                                                    child: const Icon(
                                                      Icons.clear,
                                                      color: Colors.white,
                                                      size: 20.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          maxLength: 100,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.none,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: Colors.white,
                                          validator: _model
                                              .textController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Dob',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 10.0, 25.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final datePickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate:
                                                (functions.getDateTimeAgo() ??
                                                    DateTime.now()),
                                            firstDate: (DateTime
                                                    .fromMicrosecondsSinceEpoch(
                                                        -616656600000000) ??
                                                DateTime(1900)),
                                            lastDate:
                                                (functions.getDateTimeAgo() ??
                                                    DateTime(2050)),
                                            builder: (context, child) {
                                              return wrapInMaterialDatePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 24.0,
                                              );
                                            },
                                          );

                                          if (datePickedDate != null) {
                                            safeSetState(() {
                                              _model.datePicked = DateTime(
                                                datePickedDate.year,
                                                datePickedDate.month,
                                                datePickedDate.day,
                                              );
                                            });
                                          }
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF333333),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                                    'yMMMd',
                                                                    _model
                                                                        .datePicked) !=
                                                                ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
                                                            _model.datePicked)
                                                        : 'Enter Dob',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: dateTimeFormat(
                                                                          'yMMMd',
                                                                          _model
                                                                              .datePicked) !=
                                                                      ''
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .info
                                                              : const Color(
                                                                  0x4DFFFFFF),
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Address',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 10.0, 25.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController4,
                                          focusNode: _model.textFieldFocusNode4,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController4',
                                            const Duration(milliseconds: 200),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Enter Address',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: const Color(0x4DFFFFFF),
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0xFF333333),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            suffixIcon: _model.textController4!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController4
                                                          ?.clear();
                                                      setState(() {});
                                                    },
                                                    child: const Icon(
                                                      Icons.clear,
                                                      color: Colors.white,
                                                      size: 20.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.name,
                                          cursorColor: Colors.white,
                                          validator: _model
                                              .textController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Password',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 10.0, 25.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController5,
                                        focusNode: _model.textFieldFocusNode5,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        textInputAction: TextInputAction.done,
                                        obscureText: !_model.passwordVisibility,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Enter Password',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0x4DFFFFFF),
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF333333),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model.passwordVisibility =
                                                  !_model.passwordVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        cursorColor: Colors.white,
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  Colors.white,
                                            ),
                                            child: Checkbox(
                                              value: _model.checkboxValue ??=
                                                  false,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                    .checkboxValue = newValue!);
                                              },
                                              side: const BorderSide(
                                                width: 2,
                                                color: Colors.white,
                                              ),
                                              activeColor: Colors.white,
                                              checkColor: Colors.black,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'I accept ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Terms & Conditions',
                                            options: FFButtonOptions(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.transparent,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 40.0, 25.0, 25.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          if (functions.signUpValidation(
                                                  _model.textController1.text,
                                                  _model.textController2.text,
                                                  _model.textController3.text,
                                                  dateTimeFormat('yMMMd',
                                                      _model.datePicked),
                                                  _model.textController4.text,
                                                  _model.textController5.text,
                                                  _model.checkboxValue) ==
                                              'Validation successful') {
                                            _model.apiResulty3l =
                                                await OnboardingGroupGroup
                                                    .signUpCall
                                                    .call(
                                              firstName:
                                                  _model.textController1.text,
                                              lastName:
                                                  _model.textController2.text,
                                              email:
                                                  _model.textController3.text,
                                              dob: dateTimeFormat(
                                                  'd/M/y', _model.datePicked),
                                              address:
                                                  _model.textController4.text,
                                              password:
                                                  _model.textController5.text,
                                              role: 1,
                                              deviceToken: '123456',
                                              deviceType: 'ios',
                                            );

                                            shouldSetState = true;
                                            if ((_model
                                                    .apiResulty3l?.succeeded ??
                                                true)) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Your account has been registered successfully',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                              context.safePop();
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (_model.apiResulty3l
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  functions.signUpValidation(
                                                      _model
                                                          .textController1.text,
                                                      _model
                                                          .textController2.text,
                                                      _model
                                                          .textController3.text,
                                                      dateTimeFormat('yMMMd',
                                                          _model.datePicked),
                                                      _model
                                                          .textController4.text,
                                                      _model
                                                          .textController5.text,
                                                      _model.checkboxValue)!,
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                        text: 'Sign Up',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.white,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          hoverColor: Colors.white,
                                          hoverTextColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 30.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Already have an account?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.safePop();
                                              },
                                              text: 'Sign In',
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 10.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.transparent,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
