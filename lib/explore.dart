import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



class ExplorePage extends StatefulWidget {
 const ExplorePage({Key? key}) : super(key: key);
 @override
 _ExplorePageState createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff483053),
      appBar: AppBar(
          backgroundColor: Color(0xff483053),
         title: Container(
           width:350,
           height:26,
           color: Colors.white,
           child: TextField (  
  textAlign: TextAlign.center,
  decoration: InputDecoration(  
    border: InputBorder.none,  
    prefixIcon: Icon(Icons.search),
    
    hintText: 'Serach here'  ,
     hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
     contentPadding:
            EdgeInsets.only(left: 38, bottom: 7, top: 11, right: 15),
    

  ),  
) 
         )

          ),
     
         body:  Center(  
          child:
          GridView.count(  
            primary: false,  
            padding: const EdgeInsets.all(5),  
            crossAxisSpacing: 3,  
            mainAxisSpacing: 15,  
            crossAxisCount: 3, 
            children: <Widget>[  
              Container(  
                height: 100,width:100 ,
             
                child: Image.asset('assets/images/r1.jpg',width:80,height:80),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child:Image.asset('assets/images/r4.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r8.jpg'),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r11.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r2.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  


               Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r9.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r3.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r7.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r6.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r17.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              

                Container(  
                height: 100,width:100 ,
             
                child: Image.asset('assets/images/r14.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r8.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r6.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r11.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r7.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  


               Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r1.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r10.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r15.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r3.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r2.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r16.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  


                Container(  
                height: 100,width:100 ,
             
                child: Image.asset('assets/images/r1.jpg',width:80,height:80),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child:Image.asset('assets/images/r4.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r8.jpg'),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r11.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r2.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  


               Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r9.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r3.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r7.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r6.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r17.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              

                Container(  
                height: 100,width:100 ,
             
                child: Image.asset('assets/images/r14.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r8.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r6.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r11.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r7.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r5.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  


               Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r1.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r10.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r15.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r3.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  

              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r2.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  
              Container(  
                height: 80,width: 80,
             
                child: Image.asset('assets/images/r16.jpg', width: 80,height:80 ,  ),
                color: Colors.black,  
              ),  



                  Container(
              height:10,
              width:20,
              
            ),
             
                Container(
          height: 20,
          width:20,

        child: Image.network('https://bison.usgs.gov/images/spinner2.gif')
          
          
          ),

              Container(
              height:10,
              width:20,
              
            ),

              
            ],  
          )),  
    );  
  }  
}  
    
   