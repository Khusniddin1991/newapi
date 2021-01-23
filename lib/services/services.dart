

import 'dart:convert';

import 'package:http/http.dart';
import 'package:ui8/model/Post.dart';

class Network{
  //* base form

  static String  BASE='dummy.restapiexample.com';
  //*headers part
  static Map<String,String> headers={
    'Content-type':'application/json; charset=UTF-8'
  };

// api* part here

static String API_GET='/api/v1/employees';
  static String API_POST='/api/v1/create';
  static String API_CREATE='/api/v1/update/';
  static String API_DELETE='/public/api/v1/delete/2';//{{id}}

//* methods for api

 static Future<String> GET(String api, Map<String,String> parms)async{
  var url=await Uri.http(BASE, api,parms);
  var response=await get(url);
  if(response.statusCode==200){
    return response.body;
  }
  return null;
}
  static Future<String> POST(String api, Map<String,String> parms)async{
    var url=await Uri.http(BASE, api,);
    var response=await post(url,body: jsonEncode(parms),headers:headers );
    if(response.statusCode==200||response.statusCode==201){
      return response.body;
    }
    return null;
  }
  static Future<String> PUT(String api, Map<String,String> parms)async{
    var url=await Uri.http(BASE, api,);
    var response=await put(url,body: jsonEncode(parms),headers:headers );
    if(response.statusCode==200){
      return response.body;
    }
    return null;
  }
  static Future<String> DEL(String api, Map<String,String> parms)async{
    var url=await Uri.http(BASE, api,parms);
    var response=await delete(url);
    if(response.statusCode==200){
      return response.body;
    }
    return null;
  }


//*for params
 static Map<String,String> params(){
   Map<String,String> map=new Map();

   return map;
}
  static Map<String,String> paramsPOST(Post post){
    Map<String,String> map=new Map();
    map.addAll({
      'age':post.age.toString(),
      'name':post.name,
      'status':post.status
    });

    return map;
  }
  static Map<String,String> paramsPUT(Post post){
    Map<String,String> map=new Map();
    map.addAll({
      'age':post.age.toString(),
      'name':post.name,
      'status':post.status,
      'id':post.id.toString()
    });

    return map;
  }






}