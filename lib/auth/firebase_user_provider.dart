import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class AgriConnectFirebaseUser {
  AgriConnectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AgriConnectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AgriConnectFirebaseUser> agriConnectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AgriConnectFirebaseUser>(
      (user) {
        currentUser = AgriConnectFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
