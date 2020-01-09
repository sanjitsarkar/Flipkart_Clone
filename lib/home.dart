import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flipkart/models/categories.dart';
import 'package:flipkart/pages/login.dart';
import 'package:flipkart/widgets/categoryBar.dart';
import 'package:flipkart/widgets/productsBar.dart';
import 'package:flipkart/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import './models/product_data.dart';
import './pages/product.dart';
import './models/categories.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
// final List<Categories> categories;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Flipkart",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade800,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white),
          onPressed: null,),
          IconButton(icon: Icon(Icons.account_circle,color: Colors.white),onPressed: null,)

        ],
      ),
      drawer: Drawer(
        child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      InkWell(
        onTap: ()
        {
          Navigator.of(context).push(MaterialPageRoute(
   builder: (context)=>Login()
 ));
           },
              child: Container(
          height: 200.0,
          padding: EdgeInsets.only(top:40.0,left: 10.0),
          child:Column(
            children: <Widget>[
              Icon(Icons.account_circle,color: Colors.white,size: 80.0,),
               Text('Login or Signup',style: TextStyle(color: Colors.white,fontSize: 20.0)),

            ],
          ),
          
         
          decoration: BoxDecoration(
            
            color: Colors.blue,
          ),
        ),
      ),
      ListTile(
      leading: Icon(Icons.add_box),
        title: Text('My Orders'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text('My Cart'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      
      ),
        ListTile(
        leading: Icon(Icons.favorite),
        title: Text('My Wishlist'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      )
    ],
  ),
        
      ),
       body:
        
   Column(
     
        children: <Widget>[
   
    SearchBar(),
    CategoryBar(),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0),
          child:Text("Recent Products",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.6)),)),
       ProductBar()

   
]),
    );
  }
}

