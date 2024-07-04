import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TravelAppAuthUser {
  TravelAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TravelAppAuthUser> travelAppAuthUserSubject =
    BehaviorSubject.seeded(TravelAppAuthUser(loggedIn: false));
Stream<TravelAppAuthUser> travelAppAuthUserStream() => travelAppAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
