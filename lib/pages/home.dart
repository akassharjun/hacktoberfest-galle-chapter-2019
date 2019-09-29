import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hacktoberfest_galle_chapter_demo/provider/home.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Uint8List> _images = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeModel = Provider.of<HomeModel>(context);
    homeModel.fetchImages();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hacktoberfest 2k19",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Previously Uploaded Photos",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.memory(_images[index]);
                    },
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera),
        onPressed: () {},
        label: Text("Upload a photo!"),
      ),
    );
  }
}
