import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tab_bar/empty_screen/empty_screen_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'archieved_game_model.dart';
export 'archieved_game_model.dart';

class ArchievedGameWidget extends StatefulWidget {
  const ArchievedGameWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<ArchievedGameWidget> createState() => _ArchievedGameWidgetState();
}

class _ArchievedGameWidgetState extends State<ArchievedGameWidget> {
  late ArchievedGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArchievedGameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/house-thailand-with-car-parked-front-it@3x.png',
                ).image,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xA7000000),
              ),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                                    valueOrDefault<String>(
                                      widget.title,
                                      'Archieved Games',
                                    ),
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              children: [
                                if (widget.title == 'Archieved Games')
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter1 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(HomeApiGroup
                                                    .archivedgameslistCall
                                                    .call(
                                                  token: FFAppState().authToken,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 40.0,
                                              height: 40.0,
                                              child: SpinKitFadingFour(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 40.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewArchivedgameslistResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final itemList = HomeApiGroup
                                                    .archivedgameslistCall
                                                    .body(
                                                      listViewArchivedgameslistResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];
                                            if (itemList.isEmpty) {
                                              return const Center(
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: EmptyScreenWidget(
                                                    message:
                                                        'No Games Found...',
                                                  ),
                                                ),
                                              );
                                            }
                                            return RefreshIndicator(
                                              onRefresh: () async {
                                                setState(() => _model
                                                        .apiRequestCompleter1 =
                                                    null);
                                                await _model
                                                    .waitForApiRequestCompleted1();
                                              },
                                              child: ListView.separated(
                                                padding: const EdgeInsets.fromLTRB(
                                                  0,
                                                  20.0,
                                                  0,
                                                  20.0,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: itemList.length,
                                                separatorBuilder: (_, __) =>
                                                    const SizedBox(height: 20.0),
                                                itemBuilder:
                                                    (context, itemListIndex) {
                                                  final itemListItem =
                                                      itemList[itemListIndex];
                                                  return Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      15.0,
                                                                      15.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    itemListItem,
                                                                    r'''$.title''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.0,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Color(
                                                                      0x78333333),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .convertTimeStampToLocalTime(
                                                                            getJsonField(
                                                                      itemListItem,
                                                                      r'''$.time''',
                                                                    ).toString()),
                                                                    '1720527480000',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            11.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    itemListItem,
                                                                    r'''$.city''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            11.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    itemListItem,
                                                                    r'''$.venue_location''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            11.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .getGender(
                                                                            getJsonField(
                                                                      itemListItem,
                                                                      r'''$.gender''',
                                                                    )),
                                                                    '1',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            11.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.0,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Color(
                                                                      0x7E333333),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.0),
                                                                      child: Image
                                                                          .network(
                                                                        '${FFAppState().imageBaseUrl}${getJsonField(
                                                                          itemListItem,
                                                                          r'''$.userImage1''',
                                                                        ).toString()}',
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 10.0, 0.0),
                                                                              child: Text(
                                                                                '${getJsonField(
                                                                                  itemListItem,
                                                                                  r'''$.userName1''',
                                                                                ).toString()} ${getJsonField(
                                                                                  itemListItem,
                                                                                  r'''$.lastName''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFF333333),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(1.0, 0.0),
                                                                              child: Stack(
                                                                                alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.star,
                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(3.0, 2.0, 10.0, 5.0),
                                                                                            child: Text(
                                                                                              '${functions.formatToOneDecimal(getJsonField(
                                                                                                itemListItem,
                                                                                                r'''$.averageRating''',
                                                                                              ).toString())}/5',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: const Color(0xFF333333),
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      '${getJsonField(
                                                                                        itemListItem,
                                                                                        r'''$.fee_per_player''',
                                                                                      ).toString()}€',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFF333333),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                if (widget.title == 'Friend Games')
                                  FutureBuilder<ApiCallResponse>(
                                    future: (_model.apiRequestCompleter2 ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(HomeApiGroup
                                                  .friendFollowGameListCall
                                                  .call(
                                                token: FFAppState().authToken,
                                              )))
                                        .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: SpinKitFadingFour(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 40.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewFriendFollowGameListResponse =
                                          snapshot.data!;
                                      return Builder(
                                        builder: (context) {
                                          final friendList = HomeApiGroup
                                                  .friendFollowGameListCall
                                                  .body(
                                                    listViewFriendFollowGameListResponse
                                                        .jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];
                                          if (friendList.isEmpty) {
                                            return const Center(
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: EmptyScreenWidget(
                                                  message: 'No Games Found...',
                                                ),
                                              ),
                                            );
                                          }
                                          return RefreshIndicator(
                                            onRefresh: () async {
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            },
                                            child: ListView.separated(
                                              padding: const EdgeInsets.fromLTRB(
                                                0,
                                                20.0,
                                                0,
                                                20.0,
                                              ),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: friendList.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(height: 20.0),
                                              itemBuilder:
                                                  (context, friendListIndex) {
                                                final friendListItem =
                                                    friendList[friendListIndex];
                                                return Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    15.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  friendListItem,
                                                                  r'''$.title''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF333333),
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x78333333),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .convertTimeStampToLocalTime(
                                                                          getJsonField(
                                                                    friendListItem,
                                                                    r'''$.time''',
                                                                  ).toString()),
                                                                  '1720527480000',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF333333),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  friendListItem,
                                                                  r'''$.city''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF333333),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  friendListItem,
                                                                  r'''$.venue_location''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF333333),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .getGender(
                                                                          getJsonField(
                                                                    friendListItem,
                                                                    r'''$.gender''',
                                                                  )),
                                                                  '1',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF333333),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x7E333333),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                    child: Image
                                                                        .network(
                                                                      '${FFAppState().imageBaseUrl}${getJsonField(
                                                                        friendListItem,
                                                                        r'''$.userImage1''',
                                                                      ).toString()}',
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                2.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                friendListItem,
                                                                                r'''$.userName1''',
                                                                              ).toString()} ${getJsonField(
                                                                                friendListItem,
                                                                                r'''$.lastName''',
                                                                              ).toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: const Color(0xFF333333),
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Stack(
                                                                              alignment: const AlignmentDirectional(1.0, 0.0),
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.star,
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        size: 15.0,
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 2.0, 10.0, 5.0),
                                                                                          child: Text(
                                                                                            '${functions.formatToOneDecimal(getJsonField(
                                                                                              friendListItem,
                                                                                              r'''$.averageRating''',
                                                                                            ).toString())}/5',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: const Color(0xFF333333),
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '${getJsonField(
                                                                                      friendListItem,
                                                                                      r'''$.fee_per_player''',
                                                                                    ).toString()}€',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: const Color(0xFF333333),
                                                                                          fontSize: 11.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
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
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
