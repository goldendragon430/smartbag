import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOfBXT3ZkRx4ejJzatIIrMFZzTNVxSbtY",
            authDomain: "spokepie.firebaseapp.com",
            projectId: "spokepie",
            storageBucket: "spokepie.appspot.com",
            messagingSenderId: "975360659495",
            appId: "1:975360659495:web:f3b0c1e9930836f661fe02",
            measurementId: "G-4QZC988X6G"));
  } else {
    await Firebase.initializeApp();
  }
}
