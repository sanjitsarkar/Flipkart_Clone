import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  final String id;
 final String productImg;
  final String productName;
  final int price,discount,rating,soldOut,stocks;
  final String desc;
  final String category,coupon;
  final Timestamp period;
  final bool refurbised;

  ProductData(
    {
      this.id,this.productImg, this.productName, this.price,this.discount,this.rating,this.soldOut,this.stocks,
      this.coupon,this.category,this.period,this.refurbised,this.desc
      }
    
    );
    factory ProductData.fromDoc(DocumentSnapshot doc)
    {
     
return ProductData(
id:doc.documentID,
productImg: doc['product_img'][0]??'https://pngimage.net/wp-content/uploads/2018/06/placeholder-png-4.png',
productName:doc['product_name']??'',
price:doc['market_price']??0,
discount: doc['discount']??0,
rating: doc['rating']??0,
soldOut: doc['sold_out']??0,
stocks: doc['stocks']??0,
coupon: doc['coupon']??'',
category:doc['category']??'',
period: doc['period']??'',
refurbised: doc['refurbised']??false,
desc: doc['desc']??'',


);
    }
}

ProductData jblSpeaker = ProductData(productImg:"https://rukminim1.flixcart.com/image/300/300/jteoosw0/speaker/mobile-tablet-speaker/z/a/h/jbl-jblgoplusblkeu-original-imafernwfkchxbsz.jpeg?q=70", productName:"JBL Speakers", price:5000);
ProductData skyBag = ProductData(productImg:"https://rukminim1.flixcart.com/image/300/300/jggv53k0/backpack/s/z/n/amt-fizz-sch-bag-01-grey-ff9-0-08-001-backpack-american-original-imaf4ghyrkzwtwsf.jpeg?q=70", productName:"Skybag Back Packs", price:1500);
ProductData samsungTab = ProductData(productImg:"https://rukminim1.flixcart.com/image/300/300/j30gvbk0/tablet/g/f/e/samsung-sm-t825czsatgy-original-imaeu8gbw7gywshe.jpeg?q=70", productName:"Samsung Tabs", price:7999);
ProductData sonataWatch = ProductData(productImg:"https://rukminim1.flixcart.com/image/300/300/watch/q/z/h/mf13-timex-original-imaejhptznhjnska.jpeg?q=70", productName:"Sonata Wrist Watch", price:1499);
ProductData smartWatch = ProductData(productImg:"https://rukminim1.flixcart.com/flap/300/300/image/755112a5b48d5273.jpg?q=70", productName:"Smart Watch", price:5999);

ProductData loafer =ProductData(productImg:"https://rukminim1.flixcart.com/image/400/400/jppsqkw0/shoe/g/s/b/loafer-royal-blue-7-lee-won-navy-white-original-imafbvq34nmg7smh.jpeg?q=70", productName:"Lee Won Slip On", price:249);

List<ProductData> recent = [jblSpeaker,skyBag,smartWatch,samsungTab,sonataWatch,loafer];
