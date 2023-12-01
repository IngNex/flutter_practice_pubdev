import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/provider/provider.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/screen/image_fb_storage.dart';
import 'package:provider/provider.dart';

class MainFbStorage extends StatelessWidget {
  const MainFbStorage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImageUploadProvider(),
      child: MaterialApp(
        title: 'ImageUploadProvider with Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ImageUploadScreen(),
      ),
    );
  }
}