import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sample_project/nexsoft/models/user_model.dart';

class PostService {
  final Dio dio;
  PostService({Dio? client})
    : dio =
          client ??
          Dio(
            BaseOptions(
              baseUrl: "https://dummyjson.com",
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              headers: {HttpHeaders.contentTypeHeader: "application/json"},
            ),
          );

  Future<List<UserModel>?> fetchAllData() async {
    try {
      final response = await dio.get('/users');

      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> users = response.data['users'] ?? [];
        return users.map((e) => UserModel.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return null; // veya [] dönebilirsin
    }
  }
}
