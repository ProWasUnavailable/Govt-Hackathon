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

  String _loginAttempt = '';
  String get loginAttempt => _loginAttempt;
  set loginAttempt(String value) {
    _loginAttempt = value;
  }

  List<String> _currentRequest = [];
  List<String> get currentRequest => _currentRequest;
  set currentRequest(List<String> value) {
    _currentRequest = value;
  }

  void addToCurrentRequest(String value) {
    currentRequest.add(value);
  }

  void removeFromCurrentRequest(String value) {
    currentRequest.remove(value);
  }

  void removeAtIndexFromCurrentRequest(int index) {
    currentRequest.removeAt(index);
  }

  void updateCurrentRequestAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentRequest[index] = updateFn(_currentRequest[index]);
  }

  void insertAtIndexInCurrentRequest(int index, String value) {
    currentRequest.insert(index, value);
  }
}
