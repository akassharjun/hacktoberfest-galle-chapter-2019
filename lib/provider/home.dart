import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:hacktoberfest_galle_chapter_demo/services/fake_data.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class HomeModel with ChangeNotifier {
  List<String> _base64EncodedImages = [];
  List<Uint8List> _images = [];

  HomeModel({Key key});

  getImages() => _images;

  void convertBase64StringToImage() {
    _base64EncodedImages.forEach((base64EncodedImage) {
      _images.add(base64.decode(base64EncodedImage));
    });
  }

  Future<void> fetchImages() async {
    // http.Response  response = await http.get('');
    _base64EncodedImages.add(imageBase64);
    // _base64EncodedImages.add(imageBase64);
    convertBase64StringToImage();
    ChangeNotifier();
  }
}
