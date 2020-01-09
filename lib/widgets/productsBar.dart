import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flipkart/models/product_data.dart';
import 'package:flutter/material.dart';

class ProductBar extends StatefulWidget {
  ProductBar({Key key}) : super(key: key);

  @override
  _ProductBarState createState() => _ProductBarState();
}

class _ProductBarState extends State<ProductBar> {
  @override
  Widget build(BuildContext context) {
     return FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('products').getDocuments(),
          builder: (BuildContext context,AsyncSnapshot snapshot){
            if(!snapshot.hasData)
            {
              
              return Center(child: CircularProgressIndicator());
              
            }
            else{
                print(snapshot.data.documents[0]);
          return Expanded(
          
          child: 
         GridView.builder(
           itemCount: snapshot.data.documents.length,
          //   crossAxisCount: 2,
          //  crossAxisSpacing: 5.0,
          //  mainAxisSpacing: 5.0,
            primary: false,
           shrinkWrap: true,
           gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 2),
           itemBuilder: (BuildContext context,int index)
           {
             ProductData product = ProductData.fromDoc(snapshot.data.documents[index]); 
             double price =(((product.discount)/100)*product.price);
             print(price);
             return _Product_Car(product.productImg, product.productName, product.price-price.toInt());
           },
          //  crossAxisCount: 2,
          //  crossAxisSpacing: 5.0,
          //  mainAxisSpacing: 5.0,
          //  primary: false,
          //  shrinkWrap: true,
          //  children: <Widget>[

          //  ],
         ),
        );
            }
          }
     );
          
     
  }
}
Widget _Product_Car(String product_img,String product_name,int price)
{
  void product_nav(String product_img,String product_name,int price)
  {

   debugPrint("Clicked "+product_name);
  }
return InkWell(
          onTap: ()=>product_nav(product_img,product_name,price),
                            child: Card(
  elevation: 1.0,
  child: Column(
    children: <Widget>[
      Expanded(
        child:
        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        
                          image: CachedNetworkImageProvider(product_img)
                        )
          
                      ),
                    ),
                  
                  
                ),
                Container(
                  padding: 
                  EdgeInsets.symmetric(horizontal:10.0,vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: <Widget>[
                      
                      Text(product_name,style: TextStyle(fontSize: 13.0,color: Colors.blueGrey,fontWeight: FontWeight.w300),),
                       SizedBox(width: 5.0,),
                      Column(
                        
                        children: <Widget>[
                       
                          RawMaterialButton(
                            
                           fillColor:Colors.blue.withOpacity(1),
                            onPressed: null,
                            shape:new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
                            
                            child: Text("Rs. "+price.toString(),style: TextStyle(color: Colors.white,fontSize: 15.0),),
                          ),
                          
                        ],
                      )
                    ],
                  ),
                )
              ]
              ,
            ),
          ),
);
          }
          
