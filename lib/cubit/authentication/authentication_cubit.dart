import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationUninitialized());

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void appStarted({String token}) async {
    emit(AuthenticationLoading());

    try {
      DocumentSnapshot advSnapData =
          await firestore.collection("app").doc('data').get();
      Map<String, dynamic> advData = advSnapData.data();
      // AdvertisementList advertisementL = AdvertisementList.fromMap(advData);
      print("---------------- ${advData['permission']}")  ;
    final  bool permission =advData['permission'];
    final  String  message =advData['message'];
      await Future.delayed(const Duration(seconds: 1));
      emit(AuthenticationAuthenticated(permission: permission,message: message));
    } catch (e) {
      print("auth error: " + e.toString());
      emit(AuthenticationUninitialized());
    }
  }
}
