import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper_player {
  static late SharedPreferences sharedPreferences;
  static String? Id='';
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBool({required String key, required bool value}) async {
    return await sharedPreferences.setBool(key, value);
  }

  static bool getBool({required String key}) {
    return sharedPreferences.getBool(key) ?? false;
  }

  static Future<bool> saveData({required String key, required dynamic value}) async {
    Id=value;
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is bool) return await sharedPreferences.setBool(key, value);
    return await sharedPreferences.setDouble(key, value);
  }

  static dynamic getData({required String key}){
    return sharedPreferences.get(key);
  }
  // static dynamic removeData({required String key}){
  //   sharedPreferences.clear();
  //   return true;
  // }
  static Future<bool>  removeData  ({required String key})async{
    return await sharedPreferences.clear();
  }
  static void removeData2( ){
    sharedPreferences.clear() ;

  }

}

