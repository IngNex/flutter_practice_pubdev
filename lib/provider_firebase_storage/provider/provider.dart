import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class ImageUploadProvider extends ChangeNotifier {
  

  Future<String?> uploadImage(File imageFile) async {
    final FirebaseStorage storage = FirebaseStorage.instance;

    final String fileName = imageFile.path.split("/").last;
    final String fileExtension = imageFile.path.split('.').last;
    try {
      final Reference ref = storage.ref().child('users').child(fileName);
      final metadata = SettableMetadata(
      contentType: 'image/$fileExtension',
      customMetadata: {'picked-file-path': imageFile.path},
    );

      final UploadTask uploadTask = ref.putFile(imageFile, metadata);
      final TaskSnapshot storageTaskSnapshot = await uploadTask.whenComplete(() => true);
      final String downloadUrl = await storageTaskSnapshot.ref.getDownloadURL();
      print(downloadUrl);
      return downloadUrl;
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }
}