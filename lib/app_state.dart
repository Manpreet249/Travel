import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
  }

  String _imageBaseUrl = 'http://122.176.141.23:4041/images/profile/';
  String get imageBaseUrl => _imageBaseUrl;
  set imageBaseUrl(String value) {
    _imageBaseUrl = value;
  }

  dynamic _sportsCategoryJson;
  dynamic get sportsCategoryJson => _sportsCategoryJson;
  set sportsCategoryJson(dynamic value) {
    _sportsCategoryJson = value;
  }
}
