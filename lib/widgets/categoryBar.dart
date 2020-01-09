import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flipkart/models/categories.dart';
import 'package:flutter/material.dart';

// import '../home.dart';

class CategoryBar extends StatefulWidget {
  CategoryBar({Key key}) : super(key: key);

  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('categories').getDocuments(),
          builder: (BuildContext context,AsyncSnapshot snapshot){
            if(!snapshot.hasData)
            {
              
              return Center(child: CircularProgressIndicator());
              
            }
            else{
                print(snapshot.data.documents[0]);
          return
              Container(
          width: double.infinity,
          height: 80.0,
          color: Colors.white,
          child:ListView.builder(
            scrollDirection:Axis.horizontal,
            itemCount: snapshot.data.documents.length,
            
            itemBuilder: (BuildContext context,int index)
            {
              Categories cat = Categories.fromDoc(snapshot.data.documents[index]); 
return Row(children: <Widget>[
listItem(cat.catgName,cat.catgImg)
],);
            }
          )
              );
            }
          });
  }
}


Widget listItem(String title,String img)
{
  return InkWell(
    onTap: ()=>debugPrint("Clicked "+title),
      child: Container(
                  
                  alignment: Alignment.center,
                  
                  height: 78.0,
                 margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      new Container(
                        
                      width: 50.0,
                      height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            
                            image:CachedNetworkImageProvider(img)
                          )
                        ),
                      
                      ),
                      SizedBox(height: 3.0,),
                      Text(title,style: TextStyle(fontSize: 13.0,color: Colors.black),),],
                  ),
                  
                ),
  );
}