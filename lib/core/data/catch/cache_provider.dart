
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class CatchProvider {
  CatchProvider ._internal();

 static CatchProvider _singletoon = CatchProvider._internal();

 late SharedPreferences _pref;

  factory CatchProvider() {
    return _singletoon;
  }

  void setUserToken(String token) async{
    _pref = await SharedPreferences.getInstance();
    await _pref.setString("token", token);
  }

  void setUserStatus(bool value) async{
    _pref = await SharedPreferences.getInstance();
    await _pref.setBool("loginStatus", value);
  }

  FutureOr<String> getUserToken() async{
    _pref = await SharedPreferences.getInstance();
    return Future.value(_pref.getString("token") ?? "");
  }

  FutureOr<bool> getUserStatus() async{
    _pref = await SharedPreferences.getInstance();
    return Future.value(_pref.getBool("loginStatus") ?? false);
  }

}