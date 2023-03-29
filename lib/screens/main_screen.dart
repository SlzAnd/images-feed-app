import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:unsplash_client/data/models.dart';

class MainScreen extends StatelessWidget {
  // Photo photo;
  final String imageUrl = 'https://images.unsplash.com/photo-1680082286331-4473a0801b0e?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=Mnw0Mjg5MzR8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4MDA5NTQ1OA\u0026ixlib=rb-4.0.3\u0026q=80\u0026w=1080';
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Images-Feed'),
        centerTitle: true,
      ),
      body: Center(
        child: CachedNetworkImage(imageUrl: imageUrl),
      ),
    );
  }
}