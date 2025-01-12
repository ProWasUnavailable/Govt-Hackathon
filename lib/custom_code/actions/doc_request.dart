// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future docRequest(
  BuildContext context,
  String request,
) async {
  if (request == 'Renewal of Non-Pro DL') {
    FFAppState().update(() {
      FFAppState().currentRequest = [
        'Birth Certificate',
        'Medical Certificate',
        'Non-Professional License'
      ];
    });
  }
  if (request == 'Renewal of Pro DL') {
    FFAppState().update(() {
      FFAppState().currentRequest = [
        'Birth Certificate',
        'Medical Certificate',
        'Professional License'
      ];
    });
  }
  if (request == 'Renewal of Passport') {
    FFAppState().update(() {
      FFAppState().currentRequest = ['Passport'];
    });
  }
  if (request == 'Update of Birth Certificate') {
    FFAppState().update(() {
      FFAppState().currentRequest = ['Birth Certificate'];
    });
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
