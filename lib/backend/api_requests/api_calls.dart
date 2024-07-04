import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Onboarding Group Group Code

class OnboardingGroupGroup {
  static String getBaseUrl() => 'http://122.176.141.23:4041';
  static Map<String, String> headers = {};
  static SignInCall signInCall = SignInCall();
  static SignUpCall signUpCall = SignUpCall();
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    int? role = 1,
    String? deviceToken = '',
    String? deviceType = '',
  }) async {
    final baseUrl = OnboardingGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "role": $role,
  "device_token": "$deviceToken",
  "device_type": "$deviceType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignIn',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.token''',
      ));
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? dob = '',
    String? address = '',
    String? password = '',
    int? role,
    String? deviceToken = '',
    String? deviceType = '',
  }) async {
    final baseUrl = OnboardingGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$firstName",
  "sir_name": "$lastName",
  "email": "$email",
  "dob": "$dob",
  "password": "$password",
  "role": $role,
"address":"$address",
  "device_token": "$deviceToken",
  "device_type": "$deviceType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUp',
      apiUrl: '$baseUrl/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic body(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End Onboarding Group Group Code

/// Start HomeApi Group Code

class HomeApiGroup {
  static String getBaseUrl() => 'http://122.176.141.23:4041';
  static Map<String, String> headers = {};
  static MyGameListCall myGameListCall = MyGameListCall();
  static NewsDataListCall newsDataListCall = NewsDataListCall();
  static ArchivedgameslistCall archivedgameslistCall = ArchivedgameslistCall();
  static FriendFollowGameListCall friendFollowGameListCall =
      FriendFollowGameListCall();
  static SportsCateListCall sportsCateListCall = SportsCateListCall();
}

class MyGameListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HomeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MyGameList',
      apiUrl: '$baseUrl/mygamelist',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
        true,
      ) as List?;
}

class NewsDataListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HomeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'NewsDataList',
      apiUrl: '$baseUrl/newsDataList',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
        true,
      ) as List?;
}

class ArchivedgameslistCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HomeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Archivedgameslist',
      apiUrl: '$baseUrl/archivedgameslist',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
        true,
      ) as List?;
}

class FriendFollowGameListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HomeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'friendFollowGameList',
      apiUrl: '$baseUrl/friendFollowGameList',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
        true,
      ) as List?;
}

class SportsCateListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HomeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SportsCateList',
      apiUrl: '$baseUrl/sportsCateList',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
        true,
      ) as List?;
}

/// End HomeApi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
