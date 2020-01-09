import 'package:flipkart/home.dart';
import 'package:flipkart/pages/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    final _formKey = GlobalKey<FormState>();
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: ()=>
        {
           Navigator.of(context).push(MaterialPageRoute(
   builder: (context)=>Home()
 ))
        },icon: Icon(Icons.content_cut,color: Colors.white,),color: Colors.white,),
        title: Text("Flipkart",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      centerTitle: true,
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade800,
       
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
        child: Form(
          key:_formKey,
          child: Column(
            children: <Widget>[
               TextFormField(
                controller: null,
              decoration: InputDecoration(
                hintText: 'Full Name',
              ),
              ),
               TextFormField(
                controller: null,
                keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                
              ),
              ),
              
              TextFormField(
                controller: null,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
              ),
               TextFormField(
                controller: null,
                obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              ),
              SizedBox(height: 30.0,),
              Material(
                color: Colors.blue,
              
                              child: FlatButton(
                   
                  onPressed: null,
                  child: Text('Signup',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 20.0),
                ),
              ),
              SizedBox(height: 30.0,),
              Material(
                color: Colors.blue,
              
                              child: FlatButton(
                   
                   onPressed: ()=>
                  {
                           Navigator.of(context).push(MaterialPageRoute(
   builder: (context)=>Login()
 ))
                  },
                  child: Text('Login',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}