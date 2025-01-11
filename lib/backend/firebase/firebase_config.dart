import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCElzRP7_3m5ZLFAYF3TkkKQ6QtqLTeCms",
            authDomain: "govern-0zdg0u.firebaseapp.com",
            projectId: "govern-0zdg0u",
            storageBucket: "govern-0zdg0u.firebasestorage.app",
            messagingSenderId: "206894617154",
            appId: "1:206894617154:web:546e9110533bdd5a4813db"));
  } else {
    await Firebase.initializeApp();
  }
}
