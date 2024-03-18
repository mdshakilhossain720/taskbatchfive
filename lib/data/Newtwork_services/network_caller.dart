import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

import 'response_object.dart';

class NetworkCaller {
  static Future<ResponseObject> getRequest(String url) async {
    try {
      final Response response = await get(Uri.parse(url));
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decodeResponse = jsonDecode(response.body);
        return ResponseObject(
            statuscode: 200, responseBODY: decodeResponse, issuccess: true);
      } else {
        return ResponseObject(
            statuscode: response.statusCode,
            responseBODY: '',
            issuccess: false);
      }
    } catch (e) {
      log(e.toString());
      return ResponseObject(
          issuccess: false,
          statuscode: -1,
          responseBODY: '',
          errorMessage: e.toString());
    }
  }


  static Future<ResponseObject> postRequest(String url,Map<String,dynamic>body) async {
    try {
      final Response response = await post(Uri.parse(url),body: jsonEncode(body),headers: {
        'Content-type':'Application/json'
      });
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decodeResponse = jsonDecode(response.body);
        return ResponseObject(
            statuscode: 200, responseBODY: decodeResponse, issuccess: true);
      } else if(response.statusCode==401) {
        return ResponseObject(
          errorMessage: "email/password wrong try again",
            statuscode: response.statusCode,
            responseBODY: '',
            issuccess: false);
      }else {
        return ResponseObject(
            statuscode: response.statusCode,
            responseBODY: '',
            issuccess: false);
      }
    } catch (e) {
      log(e.toString());
      return ResponseObject(
          issuccess: false,
          statuscode: -1,
          responseBODY: '',
          errorMessage: e.toString());
    }
  }

}
