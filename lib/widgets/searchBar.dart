import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
  
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
  
        );
        
  }
}