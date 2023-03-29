import 'package:dio/dio.dart';
import '../env/env.dart';


class UnsplashRequests {
  static String apiUrl = 'https://api.unsplash.com/';
  final Dio dio;

  UnsplashRequests(this.dio);

  Future<List<dynamic>> getPhotos({int page = 1, int perPage = 10}) async{
    final response = await dio.get('$apiUrl/photos',
      queryParameters: {'client_id' : Env.apiKey, 'page' : page, 'per_page' : perPage});
      return response.data;
  }

  Future<List<dynamic>> searchPhotos(String query, {int page = 1, int perPage = 10}) async{
    final response = await dio.get('$apiUrl/search/photos',
      queryParameters: {'client_id' : Env.apiKey, 'page' : page, 'per_page' : perPage, 'query': query});
      return response.data['results'];
  }

  Future<List<dynamic>> getPhoto(String id) async{
    final response = await dio.get('$apiUrl/photos/:$id',
      queryParameters: {'client_id' : Env.apiKey});
      return response.data;
  }




}

