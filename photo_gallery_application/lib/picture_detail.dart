import 'package:flutter/material.dart';

class  PictureDetail extends StatelessWidget {
  // const PictureDetail({ Key? key }) : super(key: key);

  final String imageUrl;
  PictureDetail(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Picture Detail"),
        centerTitle: true,
      ),
      body: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.network(imageUrl,
          fit: BoxFit.cover, height: double.infinity,width: double.infinity)),

      ),

      
    );
  }
}

