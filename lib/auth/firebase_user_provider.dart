import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ThaajaStoresFirebaseUser {
  ThaajaStoresFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ThaajaStoresFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ThaajaStoresFirebaseUser> thaajaStoresFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ThaajaStoresFirebaseUser>(
            (user) => currentUser = ThaajaStoresFirebaseUser(user));
