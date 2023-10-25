
import 'package:shared_preferences/shared_preferences.dart';

class SpFile {

  static var pref ;

  static getInstance() async{
    pref = await SharedPreferences.getInstance();
  }

  static setString(String key, String value){
    pref.setString(key, value);
  }

  static getString(String key){
    return pref.getString(key);
  }

}