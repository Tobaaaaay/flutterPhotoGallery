import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_gallery_application/picture_detail.dart';

void main() {
  runApp(MaterialApp(
    //remove trial 
    debugShowCheckedModeBanner: false,
    //setiing home page
    home: PhotoGalleryApp()
  ));
}



class PhotoGalleryApp extends StatefulWidget {
  const PhotoGalleryApp({ Key? key }) : super(key: key);
  @override
  _PhotoGalleryAppState createState() => _PhotoGalleryAppState();
}

class _PhotoGalleryAppState extends State<PhotoGalleryApp> {
  List img =[
    "https://images.unsplash.com/photo-1495616811223-4d98c6e9c869?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3Vuc2V0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=60",
    "https://images.unsplash.com/photo-1495567720989-cebdbdd97913?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1414609245224-afa02bfb3fda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=335&q=80",
    "https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1500245804862-0692ee1bbee8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1498575637358-821023f27355?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=760&q=80"  
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 18),   
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text("Photo Gallery Image",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.amber

              ),),
              SizedBox(height: 18),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.amber,),
                  hintText: "Search for Image",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )

                ),
              ),
              SizedBox(height: 24.0),
              Expanded(child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2, 
                  crossAxisSpacing:12,
                  mainAxisSpacing:12,
                  itemCount: img.length,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8) ),
                        child:  GestureDetector(
                          
    
                          onTap:(){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => PictureDetail(img[index])));

                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(img[index],fit: BoxFit.fill,),),
                        ),
                    );},
                  staggeredTileBuilder: (index){
                    return new StaggeredTile.count(1, index.isEven ? 1.2 : 2);
                    }),
                  )
              )    
            ]
          ),
        ),
      ),
      
    );
  }
}






