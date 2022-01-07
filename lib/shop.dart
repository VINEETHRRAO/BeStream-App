import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:url_launcher/url_launcher.dart';


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
                 child:const TextField (
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),

                      hintText: 'Search here'  ,
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
             onPressed: () async {
               const url = "https://www.flipkart.com/tee-town-graphic-print-men-round-neck-black-t-shirt/p/itm6a09aaad94591?pid=TSHFTE6YXPXFTG8B&lid=LSTTSHFTE6YXPXFTG8BRZTAKM&marketplace=FLIPKART&q=dont+be+sexist+t+shirt&store=clo%2Fash%2Fank&srno=s_1_14&otracker=search&otracker1=search&fm=SEARCH&iid=42b1b667-4dad-4392-8be3-e1f6330b331c.TSHFTE6YXPXFTG8B.SEARCH&ppt=sp&ppn=sp&qH=3e396185dcc867e8";
               if(await canLaunch(url)){
                  await launch(
                    url,
                    forceWebView: true,
                    enableJavaScript: true,
                  );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/puma-solid-men-polo-neck-grey-t-shirt/p/itmdfe2c9237e523?pid=TSHG4PV5F4RQC7NY&lid=LSTTSHG4PV5F4RQC7NYYYO93W&marketplace=FLIPKART&q=grey+t+shirt+men&store=clo%2Fash%2Fank%2Fedy&srno=s_3_111&otracker=search&otracker1=search&fm=SEARCH&iid=4a2703c3-b6e1-40a1-938d-3050dd66231e.TSHG4PV5F4RQC7NY.SEARCH&ppt=sp&ppn=sp&ssid=5q61hxyyow0000001641563028579&qH=0f88a01c76d58780";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/timex-fashion-analog-watch-men/p/itmf3zhm9h4vazh2?pid=WATF279B9EHJHDJZ&lid=LSTWATF279B9EHJHDJZIKXM19&marketplace=FLIPKART&q=brown+watch+timex&store=r18%2Ff13&srno=s_1_24&otracker=search&otracker1=search&fm=SEARCH&iid=ec2793f6-27b8-43d1-a8e8-ab219ed11117.WATF279B9EHJHDJZ.SEARCH&ppt=sp&ppn=sp&ssid=klyzs6boog0000001641563311941&qH=049a11debdc3e766";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/killer-derby-dark-grey-38-l-laptop-backpack/p/itm2edcf5c5c94e1?pid=LTBF3YGMAHZVXSVT&lid=LSTLTBF3YGMAHZVXSVTJHHLZ9&marketplace=FLIPKART&q=backpack+light+grey&store=reh%2F4d7%2Fak9&srno=s_1_15&otracker=search&otracker1=search&fm=SEARCH&iid=d9997e79-911a-468f-b924-573b5479fbb7.LTBF3YGMAHZVXSVT.SEARCH&ppt=sp&ppn=sp&ssid=ubji5l5s400000001641563387091&qH=bf43f31e4c1afed6";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/people-full-sleeve-graphic-print-men-sweatshirt/p/itm0a2e1f811279b?pid=SWSG8VMBBFSJUKKK&lid=LSTSWSG8VMBBFSJUKKKLM8VLW&marketplace=FLIPKART&q=orange+and+black+hoodie&store=clo%2Fqvw%2F64a%2Fvui&srno=s_1_21&otracker=search&otracker1=search&fm=SEARCH&iid=a6c414f6-9341-4451-9955-d95f935ba4a9.SWSG8VMBBFSJUKKK.SEARCH&ppt=sp&ppn=sp&ssid=j90z4kbdq80000001641563448062&qH=d38eed5a43b390a7";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/extreme-machine-44l-black-green-laptop-backpack-travel-44-l/p/itm9488a6d74661b?pid=BKPGYWHKVHZ3QZMX&lid=LSTBKPGYWHKVHZ3QZMXJKGN4L&marketplace=FLIPKART&q=backpack+black+green&store=reh%2F4d7%2Fak9&srno=s_1_19&otracker=search&otracker1=search&fm=SEARCH&iid=e83ac7ad-6a65-4697-be00-86b6f7ee6099.BKPGYWHKVHZ3QZMX.SEARCH&ppt=sp&ppn=sp&ssid=hg900fp80w0000001641563510460&qH=5e7942bd12a2ad69";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/adowits-printed-men-round-neck-black-t-shirt/p/itm76c11a9db13ed?pid=TSHG6Y6FPFGHZQ8K&lid=LSTTSHG6Y6FPFGHZQ8KSH9RWG&marketplace=FLIPKART&q=t+shirt+rubicks+cube&store=clo%2Fash%2Fank%2Fedy&srno=s_1_2&otracker=search&otracker1=search&fm=SEARCH&iid=c0137857-b1f5-40db-b4c8-c6fffe5564e3.TSHG6Y6FPFGHZQ8K.SEARCH&ppt=sp&ppn=sp&ssid=zxikuwn1mo0000001641563601285&qH=86266e9007b608f3";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/people-full-sleeve-color-block-men-sweatshirt/p/itm28b03f9e80d03?pid=SWSFZKK5MFRHGN9G&lid=LSTSWSFZKK5MFRHGN9GI2KXPE&marketplace=FLIPKART&q=hooide&store=clo%2Fqvw%2F64a%2Fvui&srno=s_3_119&otracker=search&otracker1=search&fm=organic&iid=ae0ee33f-352d-4421-8021-6fe6ce477a10.SWSFZKK5MFRHGN9G.SEARCH&ppt=sp&ppn=sp&qH=37ecdbb5449b15e9";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/puma-full-sleeve-graphic-print-men-sweatshirt/p/itmebfc288428aa2?pid=SWSFUY89SB9GHMCV&lid=LSTSWSFUY89SB9GHMCV3VQ0CU&marketplace=FLIPKART&q=hooide&store=clo%2Fqvw%2F64a%2Fvui&srno=s_3_83&otracker=search&otracker1=search&fm=organic&iid=ae0ee33f-352d-4421-8021-6fe6ce477a10.SWSFUY89SB9GHMCV.SEARCH&ppt=sp&ppn=sp&qH=37ecdbb5449b15e9";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
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
             onPressed: () async {
               const url = "https://www.flipkart.com/citizen-analog-watch-men/p/itmbf83425aedba3?pid=WATG5F55GQYY3AY4&lid=LSTWATG5F55GQYY3AY49MIBAR&marketplace=FLIPKART&q=black+and+gold+watch+men&store=r18%2Ff13&srno=s_1_21&otracker=search&otracker1=search&fm=SEARCH&iid=c5a51992-f061-4df0-baad-b42ce4a31860.WATG5F55GQYY3AY4.SEARCH&ppt=sp&ppn=sp&ssid=moyseyy6n40000001641563937792&qH=2b3a507f0f0d6f54";
               if(await canLaunch(url)){
                 await launch(
                   url,
                   forceWebView: true,
                   enableJavaScript: true,
                 );
               }
             },
           ),
 
           
               
               ]),  
   
           
             
            
        

             
           ],  
         ),  
         
    );  
  }  
}  
    
   