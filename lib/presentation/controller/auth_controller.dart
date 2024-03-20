
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskbatchfive/data/login_response.dart';

class AuthController{
 static Future<void>saveData(Data userdata) async {
   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    await sharedPreferences.setString('userdata', jsonEncode(userdata.toJson()));
   
 }
 
static Future<Data?>getData() async {
   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   String ? result=sharedPreferences.getString('userdata');
   if(result==null){
     return null;
   }
   return Data.fromJson(jsonDecode(result));
 }

static Future<void>savetoken(String token) async {
   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   await sharedPreferences.setString('token', token);

 }
static Future<String?>gettoken() async {
   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    return sharedPreferences.getString('token');
 }
 static Future<bool>logins() async {
   final result=await gettoken();
   return result !=null;
 }
 static Future<void>cleardata() async {
   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  await sharedPreferences.clear();
 }

}