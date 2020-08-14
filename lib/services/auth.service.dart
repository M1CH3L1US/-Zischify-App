import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:zischify/models/profile.dart';
import 'package:zischify/services/services.dart';
import 'package:zischify/src/di/injector.dart';
import 'package:zischify/src/mappings/mappings.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _db = Firestore.instance;
  final HTTPService _http = injector.get<HTTPService>();

  BehaviorSubject<Profile> profile = new BehaviorSubject();

  AuthService() {
    Observable(_auth.onAuthStateChanged).switchMap((user) {
      if (user == null) {
        profile.add(null);
        return Observable.just(null);
      }

      return Observable(getProfile(user)).map((user) => pushProfile(user));
    }).listen((e) {});
  }

  Observable<FirebaseUser> getCurrentUser() {
    return Observable(_auth.currentUser().asStream());
  }

  Stream<Map<String, dynamic>> getProfile(FirebaseUser user) {
    return _db
        .collection('users')
        .document(user.uid)
        .snapshots()
        .map((snap) => snap.data);
  }

  Observable<String> getAuthToken() {
    return getCurrentUser().switchMap((user) =>
        Observable.fromFuture(user.getIdToken()).map((res) => res.token));
  }

  logOut() {
    _auth.signOut();
  }

  void pushProfile(Map<String, dynamic> profileData) {
    profile.add(new Profile.fromJson(profileData));
  }

  Observable<AuthResult> auth(String code) {
    return _http
        .post(URLConfig.authURL, data: {'token': code})
        .map((res) => res.body)
        .switchMap((token) =>
            Observable.fromFuture(_auth.signInWithCustomToken(token: token)));
  }
}

// https://firebase.google.com/docs/auth/web/custom-auth
