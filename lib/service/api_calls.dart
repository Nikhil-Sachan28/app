import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../utils/My_Toast.dart';
// import 'Api_urls.dart';
import 'api_urls.dart';

class ApiCall {
  static Future postApiCall(String url, model,
      [String? yes]) async {
    String? showToast = yes;
    try {
      final response = await http.post(
        Uri.parse('${ApiUrl.baseUrl}$url'),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          // 'X-Requested-With': 'XMLHttpRequest',
        },
        body: json.encode(model.toJson()),
      );
      debugPrint("${json.encode(model.toJson())} hello.");
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201 ) {
        var o = json.decode(response.body);
        print(o);
        return o;
      } else {
        if (response.statusCode == 401) {
          var o = json.decode(response.body);
          print(o);
          // Res401 res401= Res401.fromJson(o);
          MyToast.toast(o?.message);
          print(o);
        } else if (response.statusCode == 404) {
          var o = json.decode(response.body);
          // Res404 res401= Res404.fromJson(o);
          MyToast.toast(o?.message);
          print(o);
        }else if(response.statusCode == 400){
          var x = jsonDecode(response.body);
          MyToast.toast(x["message"].toString());
          print(x["message"].toString());
          // Res404 res401= Res404.fromJson(o);
          
        }
        else {
          Get.back();
          MyToast.toast(response.reasonPhrase.toString());
          debugPrint("\n\n\n\n${response.statusCode.toString()}\n\n\n\n\n");
        }
      }
    } catch (e) {
      showToast == "yes"
          ? debugPrint("something went wrong.")
          : MyToast.toast("something went wrong.");
      debugPrint("\n\n\n From catch block \n${ApiUrl.baseUrl}/$url\n$e\n\n\n");
    }
  }

  static Future postApiCallToken(String url,basicAuth1 ,model, [String? yes]) async {

    String? showToast = yes;
    String basicAuth = 'Bearer $basicAuth1';

    try {
      final response = await http.post(
        Uri.parse('${ApiUrl.baseUrl}$url'),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
          'Authorization': basicAuth,
        },
        body: json.encode(model.toJson()),
      );
      print("--------------postApiCallToken--------------------");
      print(json.encode(model.toJson()));
      print(response.body.toString());
      print("----------------------------------");
      if (response.statusCode == 200 || response.statusCode == 201) {
        var o = json.decode(response.body);
        return o;
      } else {
        if (response.statusCode == 401) {
          // await pref.setBoolean("check", false);
          // Get.offAll(const LoginScreen());
          MyToast.toast(jsonDecode(response.body)?.message);
        } else {
          // Get.back();
          MyToast.toast(response.reasonPhrase.toString());
          print(response.reasonPhrase.toString());
          debugPrint("\n\n\n\n${response.statusCode.toString()}\n\n\n\n\n");
        }
      }
    } catch (e) {
      showToast == "yes"
          ? debugPrint("something went wrong.")
          : MyToast.toast("something went wrong.");
      debugPrint("\n\n\n From catch block \n${ApiUrl.baseUrl}/$url\n$e\n\n\n}");
    }
  }

  static Future getApiCall(String url,
      [String? yes]) async {
    String? showToast = yes;

    try {
      final response = await http.get(
        Uri.parse('${ApiUrl.baseUrl}$url'),
        headers: {
          'Content-type': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
          'Accept': 'application/json',

        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var o = json.decode(response.body.toString());
        // print(o);
        return o;
      } else
      if (response.statusCode == 401 ||  response.statusCode == 404) {
        // await pref.setBoolean("check", false);
        // Get.off(const LoginScreen());
        print(response.body);

        // MyToast.toast(o);
      } else {
        Get.back();
        // print(response.body.error);
        MyToast.toast(response.reasonPhrase.toString());
        debugPrint("\n\n\n\n${response.statusCode.toString()}\n\n\n\n\n");
      }

    } catch (e) {
      showToast == "yes"
          ? debugPrint("something went wrong.")
          : MyToast.toast("something went wrong.");
      debugPrint("\n\n\n From catch block \n${ApiUrl.baseUrl}$url\n$e\n\n\n");
    }
  }
  static Future getApiCall2(String url,basicAuth1,
      [String? yes]) async {
    String? showToast = yes;
    String basicAuth = 'Bearer $basicAuth1';
    try {
      print('${ApiUrl.baseUrl}$url');
      final response = await http.get(
        Uri.parse('${ApiUrl.baseUrl}$url'),
        headers: {
          'Content-type': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
          'Accept': 'application/json',
          'Authorization': basicAuth,
        },
      );
      print('Token : ${basicAuth1}');
      print('Response : ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        var o = json.decode(response.body.toString());
        return o;
      } else {
        if (response.statusCode == 401) {
          // await pref.setBoolean("check", false);
          // Get.off(const LoginScreen());
          MyToast.toast("token problem");
        } else {
          Get.back();
          MyToast.toast(response.reasonPhrase.toString());
          debugPrint("\n\n\n\n${response.statusCode.toString()}\n\n\n\n\n");
        }
      }
    } catch (e) {
      showToast == "yes"
          ? debugPrint("something went wrong.")
          : MyToast.toast("something went wrong.");
      debugPrint("\n\n\n From catch block \n${ApiUrl.baseUrl}$url\n$e\n\n\n");
    }
  }
}
