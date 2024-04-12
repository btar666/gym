import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../sheard/cachHelper.dart';
import '../sheard/cachHelper_player.dart';
import '../sheard/post.dart';
import '../view/home2/homeSc2.dart';

class login_Controller extends GetxController{
List<post> allPost=[];
  @override
  void onInit() {


    super.onInit();
   // pri();
    //fechpost();

  }
var namecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var passwardcontroller = TextEditingController();
var name_gum_controller = TextEditingController();
var time_opencontroller = TextEditingController();
var time_closecontroller = TextEditingController();
var discribcontroller = TextEditingController();
var codecontroller = TextEditingController();



  //
  Future<void> fechpost()async{
    print("00000000000000000000");
    try {
      final uri = Uri.parse("http://62.72.16.189:90/btar/docs");
      final response = await http.get(uri);
      print("1111111111111111111");

      if (response.statusCode == 200) {
        // return post.fromjson(json.decode(response.body));
        print("2222222222222222222");
        print(response.body.toString());
        var res = jsonDecode(response.body);


        print(res);
        for (int i = 0; i < res.length; i++) {
          allPost.add(post.fromjson(res));
        }
        print("333333333333");
      } else {
        print("44444444444444");
        // throw Exception('Failed to load posts');

      }
    }catch(e){
      print("5555555555555");
      print(e.toString());
    }
    update();
    print("last");
  }
  //--------------------------------------------creatAccount
  Future<post> creatAccount(

      )async{
    Map<String,dynamic> request={
      'name':namecontroller.text,
      'email':emailcontroller.text,
      'password': passwardcontroller.text,
      'gym_name':name_gum_controller.text,
      'open_time':time_opencontroller.text,
      'close_time':time_closecontroller.text,
      'description':discribcontroller.text,

    };
    print("000000000000000000000000");
    final uri=Uri.parse("http://62.72.16.189:90/btar/btar/singUpCoach");
    final response = await http.post(
      uri,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(request),
    );
      print(response.statusCode .toString());
    print("1111111111111111111111");
    update();
    if (response.statusCode == 200) {
      print("333333333333333333333333---");
      final responseData = json.decode(utf8.decode(response.bodyBytes));
      print(responseData);
      final postId = responseData['id'].toString();
        CacheHelper.saveData(key: "Id", value: postId);
        print(postId);

      Get.to(HomeSc2());
      update();
      return post.fromjson(json.decode(response.body));

    } else {
      print("4444444444444444444444");
      update();
      throw Exception('Failed to load posts');
    }

  }

//---------------------------------------------logon coach
Future<post> loginAccount(

    )async{
  Map<String,dynamic> request={
    'email':emailcontroller.text,
    'password': passwardcontroller.text,
  };
  print("000000000000000000000000");
  final uri=Uri.parse("http://62.72.16.189:90/btar/btar/singInCoach");
  final response = await http.post(
    uri,
    headers: {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    },
    body: jsonEncode(request),
  );
  print(response.statusCode .toString());
  print("1111111111111111111111");
  update();
  if (response.statusCode == 200) {
    print("333333333333333333333333---");
    final responseData = json.decode(utf8.decode(response.bodyBytes));
    print(responseData);
    final postId = responseData['id'].toString();
    CacheHelper.saveData(key: "Id", value: postId);
    //print(postId);
   // var ii= CacheHelper.getData(key: "Id");
   // print("id:");
   // print(ii);

    Get.to(HomeSc2());
    update();
    return post.fromjson(json.decode(response.body));

  } else {
    print("4444444444444444444444");
    update();
    throw Exception('Failed to load posts');
  }

}

//--------------------------------------------add user

  Future<post> adduser(

      )async{
    Map<String,dynamic> request={
      'name':namecontroller.text,
      'code':codecontroller.text,
      'subscription_date': discribcontroller.text,

    };
    print("000000000000000000000000");
    var coach_id=CacheHelper.getData(key: 'Id');
    print(coach_id);
    final uri=Uri.parse("http://62.72.16.189:90/btar/btar/addUser?coach_id=${coach_id}");
    //print("http://62.72.16.189:90/btar/btar/addUser?coach_id=${coach_id}");
    final response = await http.post(
      uri,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(request),
    );
    print(response.statusCode .toString());
    print("1111111111111111111111");
    update();
    if (response.statusCode == 200) {
      print("333333333333333333333333---");
      final responseData = json.decode(utf8.decode(response.bodyBytes));
      print(responseData);
      final postId = responseData['id'].toString();
      CacheHelper_player.saveData(key: "Id", value: postId);
      print(postId);

      Get.to(HomeSc2());
      update();
      return post.fromjson(json.decode(response.body));

    } else {
      print("4444444444444444444444");
      update();
      throw Exception('Failed to load posts');
    }

  }

//------------------------------------------------------------------

Future<post> updatepost(
      String? name,
      String? email,
      String? gym_name,
      String? open_time,
      String? close_time,
      String? description,
      )async{
    Map<String,dynamic> request={
      'name':name,
      'email':email,
      'gym_name':gym_name,
      'open_time':open_time,
      'close_time':close_time,
      'description':description,

    };
    final uri=Uri.parse("http://62.72.16.189:90/btar/docs");
    final response=await http.put(uri,body: request);

    if (response.statusCode == 200) {
      return post.fromjson(json.decode(response.body));
    } else {
      throw Exception('Failed to load posts');
    }
  }


  Future<post?>? deletepost(
      String? name,
      String? email,
      String? gym_name,
      String? open_time,
      String? close_time,
      String? description,
      )async{
    Map<String,dynamic> request={
      'name':name,
      'email':email,
      'gym_name':gym_name,
      'open_time':open_time,
      'close_time':close_time,
      'description':description,

    };
    final uri=Uri.parse("http://62.72.16.189:90/btar/docs");
    final response=await http.delete(uri);

    if (response.statusCode == 200) {
      return null;
    } else {
      throw Exception('Failed to load posts');
    }
  }


}
