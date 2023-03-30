import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import '../env/env.dart';
import '../data/models.dart';


class UnsplashRequests extends Equatable {
  static String apiUrl = 'https://api.unsplash.com/';
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: apiUrl,
      headers: {'Authorization': Env.apiKey}
      )
  );

  Future<List<Photo>> getPhotos({int page = 1, int perPage = 10}) async{
    List<Photo> photos = [];
    try {
    final response = await _dio.get('$apiUrl/photos',
      queryParameters: {'page' : page, 'per_page' : perPage});

      photos = response.data.map((json) => Photo.fromJson(json)).toList();

      return photos;
    }catch (e) {
      throw Exception('Failed to get photos: $e');
    }
  }

  Future<List<dynamic>> searchPhotos(String query, {int page = 1, int perPage = 10}) async{
     List<Photo> photos = [];
    try {
    final response = await _dio.get('$apiUrl/search/photos',
      queryParameters: {'page' : page, 'per_page' : perPage, 'query': query});
      return response.data['results'];
    }catch (e) {
      throw Exception('Failed to get photos: $e');
    }
  }

  Future<List<dynamic>> getPhoto(String id) async{
    List<Photo> photos = [];
    try {
    final response = await _dio.get('$apiUrl/photos/:$id',
    );
      return response.data;
    }  catch (e) {
      throw Exception('Failed to get photos: $e');
    }
  }
  
  @override
  List<Object?> get props => [];
}

