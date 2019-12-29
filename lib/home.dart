import 'package:flutter/material.dart';
import './models/product_data.dart';
import './pages/product.dart';
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Flipkart",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade800,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications,color: Colors.white),
          onPressed: null,),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white),onPressed: null,)

        ],
      ),
      drawer: Drawer(
        
      ),
       body:
   Column(
     
        children: <Widget>[
    Container(
  
          width: double.infinity,
  
          height: 70.0,
  
          color: Colors.blue.shade800,
  
          child: 
  
          Row(
  
            crossAxisAlignment: CrossAxisAlignment.center,
  
            mainAxisAlignment: MainAxisAlignment.center,
  
            children: <Widget>[
  
              Container(
  
                width:MediaQuery.of(context).size.width/1.05,
  
           decoration: BoxDecoration(
  
             borderRadius: BorderRadius.circular(5.0),
  
             color: Colors.white
  
           ),
  
   
  
                child: TextField(
  
                onTap: null,
  
                style: TextStyle(
  
                  color: Colors.grey
  
                ),
  
                  decoration:InputDecoration(
  
                    isDense: true,
  
                    fillColor: Colors.red,
  
                    
  
                    prefixIcon: Icon(Icons.search,color: Colors.grey,size: 30.0,),
  
                    alignLabelWithHint: true,
  
                hintText: "Search For Products, Brands..",
  
                hintStyle: TextStyle(color: Colors.grey),
  
                focusedBorder: 
  
                OutlineInputBorder(
  
                  borderSide: BorderSide(
  
                   width: 0.0,
  
                   style: BorderStyle.none,
  
                   color: Colors.transparent
  
                 )
  
                ),
  
               border: OutlineInputBorder(
  
                 borderRadius: BorderRadius.circular(5.0),
  
                 gapPadding:5.0,
  
                 borderSide: BorderSide(
  
                   width: 0.0,
  
                   style: BorderStyle.none,
  
                   color: Colors.transparent
  
                 )
  
                ,
  
                
  
               )
  
                  ),
  
                ),
  
              )
  
            ],
  
          ),
  
        ),
        Container(
          width: double.infinity,
          height: 80.0,
          color: Colors.white,
          child:ListView(
            scrollDirection: Axis.horizontal,
            
            children: <Widget>[
               
           List_Item("Electronics", "https://img.icons8.com/nolan/48/000000/multiple-devices.png"),
           List_Item("Smart Phones", "https://img.icons8.com/nolan/48/000000/touchscreen-smartphone.png"),
           List_Item("T-Shirts", "https://img.icons8.com/office/48/000000/t-shirt.png"),
           List_Item("Women's Wear", "https://img.icons8.com/color/48/000000/green-dress.png"),
           List_Item("Trousers", "https://img.icons8.com/color/48/000000/trousers.png"),
           List_Item("Foot Wear", "https://img.icons8.com/nolan/48/000000/trainers.png"),
           List_Item("Appliance", "https://img.icons8.com/plasticine/48/000000/retro-tv.png"),
           List_Item("Beauty", "https://img.icons8.com/color/48/000000/eye-shadows.png"),
           List_Item("Toy & Baby", "https://img.icons8.com/nolan/48/000000/rattle.png"),
           List_Item("Home", "https://img.icons8.com/bubbles/48/000000/home-page.png"),
    
           List_Item("Sports & more", "https://img.icons8.com/color/48/000000/beach-soccer.png")
          
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0),
          child:Text("Recent Products",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.6)),)),
        Expanded(
          
          child: 
         GridView.count(
           crossAxisCount: 2,
           crossAxisSpacing: 5.0,
           mainAxisSpacing: 5.0,
           primary: false,
           shrinkWrap: true,
           children: <Widget>[
_Product_Car("https://rukminim1.flixcart.com/image/300/300/jteoosw0/speaker/mobile-tablet-speaker/z/a/h/jbl-jblgoplusblkeu-original-imafernwfkchxbsz.jpeg?q=70", "JBL Speakers", 5000),
_Product_Car("https://rukminim1.flixcart.com/image/300/300/jggv53k0/backpack/s/z/n/amt-fizz-sch-bag-01-grey-ff9-0-08-001-backpack-american-original-imaf4ghyrkzwtwsf.jpeg?q=70", "Skybag Back Packs", 1500),
_Product_Car("https://rukminim1.flixcart.com/image/300/300/j30gvbk0/tablet/g/f/e/samsung-sm-t825czsatgy-original-imaeu8gbw7gywshe.jpeg?q=70", "Samsung Tabs", 7999),
_Product_Car("https://rukminim1.flixcart.com/image/300/300/watch/q/z/h/mf13-timex-original-imaejhptznhjnska.jpeg?q=70", "Sonata Wrist Watch", 1499),
_Product_Car("https://rukminim1.flixcart.com/flap/300/300/image/755112a5b48d5273.jpg?q=70", "Smart Watch", 5999)
,
_Product_Car("https://rukminim1.flixcart.com/image/400/400/jppsqkw0/shoe/g/s/b/loafer-royal-blue-7-lee-won-navy-white-original-imafbvq34nmg7smh.jpeg?q=70", "Lee Won Slip On", 249)
           ],
         ),
        ),

   
],

   ),

    );
   
  }
}
Widget List_Item(String title,String img)
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
                            
                            image:NetworkImage(img)
                          )
                        ),
                      
                      ),
                      SizedBox(height: 3.0,),
                      Text(title,style: TextStyle(fontSize: 13.0,color: Colors.black),),],
                  ),
                  
                ),
  );
}
Widget _Product_Car(String product_img,String product_name,int price)
{
  void product_nav(String product_img,String product_name,int price)
  {
final data = Product_Data(
 product_img: product_img,
 product_name: product_name,
 price: price,
 desc:"lorem ipsum"
);
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
                        
                          image: NetworkImage(product_img)
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
                            
                           fillColor:Colors.white.withOpacity(.5),
                            onPressed: null,
                            shape:new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0)),
                            padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                            child: Text("Rs. "+price.toString(),style: TextStyle(color: Colors.grey,fontSize: 15.0),),
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
          
