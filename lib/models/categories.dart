import 'package:cloud_firestore/cloud_firestore.dart';

class Categories
{
  final String catgName;
  final String catgImg;
  final String catId;
 
  
Categories({this.catId,this.catgImg,this.catgName});
        factory Categories.fromDoc(DocumentSnapshot doc)
    {
     
return Categories(
catId: doc.documentID,
catgImg: doc['catImg'],
catgName: doc['catName']

);
    }
}
 final Categories electronics =   Categories(catgName:"Electronics", catgImg:"https://img.icons8.com/nolan/48/000000/multiple-devices.png");
       final Categories smartPhones =  Categories(catgName:"Smart Phones", catgImg:"https://img.icons8.com/nolan/48/000000/touchscreen-smartphone.png");
       final  Categories tShitrs =  Categories(catgName:"T-Shirts", catgImg:"https://img.icons8.com/office/48/000000/t-shirt.png");
      final   Categories womensWear =  Categories(catgName:"Women's Wear", catgImg:"https://img.icons8.com/color/48/000000/green-dress.png");
       final  Categories trousers =  Categories(catgName:"Trousers", catgImg:"https://img.icons8.com/color/48/000000/trousers.png");
        final Categories footWear =  Categories(catgName:"Foot Wear", catgImg:"https://img.icons8.com/nolan/48/000000/trainers.png");
        final Categories appliance =  Categories(catgName:"Appliance", catgImg:"https://img.icons8.com/plasticine/48/000000/retro-tv.png");
        final  Categories beauty =  Categories(catgName:"Beauty", catgImg:"https://img.icons8.com/color/48/000000/eye-shadows.png");
        final  Categories toys =  Categories(catgName:"Toy & Baby", catgImg:"https://img.icons8.com/nolan/48/000000/rattle.png");
        final  Categories home =  Categories(catgName:"Home", catgImg:"https://img.icons8.com/bubbles/48/000000/home-page.png");
        final  Categories sports =  Categories(catgName:"Sports & more", catgImg:"https://img.icons8.com/color/48/000000/beach-soccer.png");
          List<Categories> top = [electronics,smartPhones,tShitrs,womensWear,trousers,footWear,appliance,beauty,toys,home,sports];