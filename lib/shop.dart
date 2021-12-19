import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



class ShopPage extends StatefulWidget {
 const ShopPage({Key? key}) : super(key: key);
 @override
 _ShopPageState createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.purple[800],
         title: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

             Container(
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  tooltip: 'cart',
                  color: Colors.green,
                  splashColor: Colors.blue,
                  splashRadius: 22,
                  iconSize: 35,
                  onPressed: () {},
                ),
              ),

                Container(
                 width:200,
                 height:26,
                 color: Colors.white,
                 child:TextField (  
  textAlign: TextAlign.center,
  decoration: InputDecoration(  
    border: InputBorder.none,  
    prefixIcon: Icon(Icons.search),
    
    hintText: 'Serach here'  ,
     hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
     contentPadding:
                  EdgeInsets.only(left: 38, bottom: 7, top: 11, right: 15),
    

  ),  
) ,

           ),
          Column(
            children: [

              Container(child:  const Text(
                      '   Blalance:',
                      style: TextStyle(fontSize: 14,  color: Colors.white),
                    ),),
            
              
              Container(child:  const Text(
                      '   2650\u{1F4B5}',
                      style: TextStyle(fontSize: 16,  color: Colors.white),
                    ),),
            ],
          ),
              ],
            ),
         ),
         

          
     
         body:  GridView.count(  
           primary: false,  
           padding: const EdgeInsets.only(top:20,bottom: 20),  
           crossAxisSpacing: 0,  
           mainAxisSpacing: 15,  
           
           crossAxisCount: 2, 
           children: <Widget>[  
           
             Column(  
              
               
              
               
               children: [
                             
                  Expanded(
                 child:  Image.asset('assets/images/p4.jpg' ),),
              
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  


              Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p1.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  

               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p9.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  


               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p11.jpeg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  



               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p8.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  




               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p12.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  




               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p2.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  





               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p5.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  





               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p7.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  





               Column(  
              
               
            
               children: [ Expanded(child:  Image.asset('assets/images/p10.jpg', ),),
               Container(child:  Text(
                 'Price : 20\u{1F4B5}',
                 style: TextStyle(fontSize: 18,  color: Colors.grey[700]),
               ),),
                  FlatButton(
             splashColor: Colors.green,
             color: Colors.purple[800],
              textColor: Colors.white,
             child: Text('Add to Cart',),
             onPressed: () {
               setState(() {
                 
               });
             },
           ),
 
           
               
               ]),  
   
           
             
            
        

             
           ],  
         ),  
         
    );  
  }  
}  
    
   