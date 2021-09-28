
import 'package:flutter/cupertino.dart';

abstract class AuthenticationState {}

class AuthenticationUninitialized extends AuthenticationState {}
class AuthenticationError extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
  bool permission;
  String message;

  AuthenticationAuthenticated({@required this.permission,@required this.message});
}

class AuthenticationOnboarding extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}
//class AuthenticationDownloading extends AuthenticationState {}
