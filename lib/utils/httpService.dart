import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_app/modal/userModal.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpService {
  // ignore: non_constant_identifier_names
  static var time_out = const Duration(seconds: 15);
  static var client = http.Client();
  static String url = "https://jsonplaceholder.typicode.com/posts";

  static String log = "HttpServiceLog";

  // static Future<List<ModelPost>> getPosts() async {
  //   var data = await http.get(Uri.parse(url)).timeout(time_out);

  //   var jsonData = json.decode(data.body);

  //   List<ModelPost> posts = [];

  //   for (var p in jsonData) {
  //     ModelPost post = ModelPost(
  //         userId: p['userId'], id: p['id'], title: p['title'], body: p['body']);
  //     posts.add(post);
  //   }
  //   print(posts.length);
  //   return posts;
  // }

  static void insertIntoApi(String title, String body) async {
    try {
      final response = await client.post(Uri.parse(url),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'title': title,
            'body': body,
            'userId': "44529"
          }));

      print(response.body);
    } catch (er) {
      throw Exception(er);
    }

    // if (response.statusCode == 201) {
    //   List jsonResponse = await json.decode(response.body);
    //   return jsonResponse.map((e) => ModelPost.fromJson(e)).toList();
    // } else {
    //   // If the server did not return a 201 CREATED response,
    //   // then throw an exception.
    //   throw Exception('Failed to create the post.');
    // }
  }

  static Future<List<ModelPost>> getAllPost() async {
    try {
      // Map<String, String> params_header = {'ISO': "PAK"};
      // Map<String, String> params_body = {'city_id': "22", 'city_id': "12"};

      Response response = await client.get(Uri.parse(url)).timeout(time_out);

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((p) => ModelPost.fromJson(p)).toList();
      } else if (response.statusCode == 401) {
        String jsonString = response.body;
        print("$log body : " + jsonString);

        final modelPost = modelPostFromJson(jsonString);

        print("$log Status 401, please try again");

        return modelPost;
      } else {
        print("$log Network error, Please try again");
        // /return ModelCategoryOpen(status: 501, message: "Network error, Please try again");
      }
    } on TimeoutException catch (_) {
      print("$log Time out error, Please try again");
    } on SocketException {
      print("$log You are not connected to internet");
    } catch (ex) {
      throw Exception(ex);
    }
  }
}
