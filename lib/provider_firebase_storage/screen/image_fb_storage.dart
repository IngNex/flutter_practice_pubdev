import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/provider/provider.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/utils/select_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {

  File? image_to_upload;

  @override
  Widget build(BuildContext context) {
    ImageUploadProvider provider = Provider.of<ImageUploadProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Subir imagen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image_to_upload != null ? Image.file(image_to_upload!, width: 100,) : Container(height: 200,width: 200,color: Colors.red,),
            ElevatedButton(
              onPressed: () async {
                final XFile? imagen = await getImage() ;
                setState(() {
                  image_to_upload = File(imagen!.path);
                });
              },
              child: Text('Seleccionar imagen'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (image_to_upload == null) {
                  return;                  
                }
                final uploaded = await provider.uploadImage(image_to_upload!);
                print(uploaded);
              },
              child: Text('Subir imagen'),
            ),
          ],
        ),
      ),
    );
  }
}