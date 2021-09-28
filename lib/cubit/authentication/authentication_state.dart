
import 'package:flutter/cupertino.dart';

abstract class AuthenticationState {}

class AuthenticationUninitialized extends AuthenticationState {}
class AuthenticationError extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
  bool permission;

  AuthenticationAuthenticated({@required this.permission});
}

class AuthenticationOnboarding extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}
//class AuthenticationDownloading extends AuthenticationState {}
