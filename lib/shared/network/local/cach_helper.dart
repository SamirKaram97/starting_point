import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper
{
  static SharedPreferences? pref;

  static Future init()async
  {
    pref=await SharedPreferences.getInstance();
  }

  static Future<bool> putData(String key,dynamic value)async
  {
    if(value is bool)
      {return await pref!.setBool(key,value);}
    if(value is String)
      {return await pref!.setString(key,value);}
    if(value is int)
      {return await pref!.setInt(key,value);}
    else
      {return await pref!.setDouble(key,value);}
  }

  static getData(String key)
  {
    return pref?.get(key);
  }

  static Future<bool> sharedRemove(String key)
  {
    return pref!.remove(key);
  }

}