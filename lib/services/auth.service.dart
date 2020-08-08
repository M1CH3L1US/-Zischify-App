import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _db = Firestore.instance;

  Observable<FirebaseUser> user;
  Observable<dynamic> profile;
  PublishSubject loading = new PublishSubject();

  AuthService() {
    user = Observable(_auth.onAuthStateChanged);

    profile = user.switchMap((FirebaseUser u) {
      if (u == null) {
        return Observable.just({});
      }

      return _db
          .collection('users')
          .document(u.uid)
          .snapshots()
          .map((snap) => snap.data);
    });
  }

  logOut() {
    _auth.signOut();
  }

  auth(String code) async {
    http.Response res = await http
        .post('http://10.0.2.2:3000/api/v1/auth', body: {'token': code});

    String authToken = res.body;
    await _auth.signInWithCustomToken(token: authToken);
  }
}

final AuthService authService = new AuthService();

// https://firebase.google.com/docs/auth/web/custom-auth
