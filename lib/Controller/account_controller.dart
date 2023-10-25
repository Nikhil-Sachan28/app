import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jobsearch/Screens/Authentication/loginPage.dart';
import 'package:jobsearch/constants/sp_constant.dart';
import 'package:jobsearch/modals/auth/login_req.dart';
import 'package:jobsearch/modals/auth/login_res.dart';
import 'package:jobsearch/modals/auth/register_req.dart';
import 'package:jobsearch/service/Api_urls.dart';
import 'package:jobsearch/service/api_calls.dart';
import 'package:jobsearch/utils/My_Toast.dart';
import 'package:jobsearch/utils/sp_file.dart';
// import 'package:jobsearch/Service/RemoteServices.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Screens/bottomNavigationBar.dart';
import '../modals/auth/register_res.dart';

class AccountController extends GetxController {
  var isLoading = false.obs;

  var loginMsg = "".obs;

  String tokenKey = "token";

  var loadToken = '';

  var token = '';


  GetStorage userToken = GetStorage();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<bool> loginUser() async {
    isLoading(true);
    LoginReq req = LoginReq(email: email.text, password: password.text);
    try {
      var response = await ApiCall.postApiCall(ApiUrl.loginUrl, req);

      if(response!=null){
        print("---------------response not null----------");
        isLoading(false);
        LoginRes resp = LoginRes.fromJson(response);
        SpFile.setString(SpConstant.token, resp.token??"");
        // token =  resp.token??"";
        Get.off(BottomNavigationBarScreen());
        return true;
      }else{
        print("---------------response null----------");
        isLoading(false);
        MyToast.toast(response.body);
        return false;
      }
    } catch(e) {
      print("---------------response finally---------- ${e}");
      isLoading(false);
      return false;
    }
  }

  Future<bool> registerUser() async {
    isLoading(true);
    RegisterReq req = RegisterReq(email: emailController.text, password: passController.text, name: nameController.text, mobile: "1243367890");
    try {
      var response = await ApiCall.postApiCall(ApiUrl.registerUrl, req);
      print(response);

      if(response!=null){
        print("---------------response not null----------");
        isLoading(false);
        RegisterRes resp = RegisterRes.fromJson(response);
        // token =  resp.token??"";
        // SpFile.setString(SpConstant.token, resp.token??"");
        Get.off(BottomNavigationBarScreen());
        return true;
      }else{
        print("---------------response null----------");
        isLoading(false);
        MyToast.toast(response??"");
        return false;
      }
    } catch(e) {
      print("---------------response finally---------- ${e}");
      isLoading(false);
      return false;
    }
  }



  Future<void> saveToken(String msg) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  if (msg.length > 3 ) {
    await preferences.setString(tokenKey, msg);
    await userToken.write(tokenKey, msg);
  }
  }
}