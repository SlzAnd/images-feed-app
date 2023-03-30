import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:unsplash_client/data/models.dart';
import '../data/unsplash_requests.dart';


class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller = TextEditingController();
  final UnsplashRequests helper = UnsplashRequests();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Images Feed', style: TextStyle(
          fontSize: 40,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              hintText: 'Search Images',
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: ElevatedButton(onPressed: (){}, child: Icon(Icons.search)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}