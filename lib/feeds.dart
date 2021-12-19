import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';





class HomeFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff483053),
         body:  SingleChildScrollView ( // this will make your body scrollable
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
      
   /// your parameters
    
          
        
          children: <Widget>[

         
          Container(
              height:20,
              width:400,
              
            ),
          
         

          Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-4.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),
          
          Container(
              height:10,
              width:400,
              
            ),
        
           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-2.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'The_Real_Sadhu',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 5mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '1k',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '561',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

          Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-3.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Ni_killz',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 1hr ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '204',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '9',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

           Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-1.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Travel69freak',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2days ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '31L',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '600',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

Container(
              height:10,
              width:400,
              
            ),

            Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-4.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

          Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-3.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

             Container(
              height:10,
              width:400,
              
            ),

            
          Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-4.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),
          
          Container(
              height:10,
              width:400,
              
            ),
        
           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-2.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'The_Real_Sadhu',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 5mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '1k',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '561',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

          Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-3.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Ni_killz',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 1hr ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '204',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '9',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

           Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-1.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Travel69freak',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2days ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '31L',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '600',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

Container(
              height:10,
              width:400,
              
            ),

            Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-4.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

          Container(
              height:10,
              width:400,
              
            ),


           Stack( children: <Widget>[

         
            
  
          Container(
                color: Colors.white,
                child: Container(child: Image.asset('assets/images/post-3.jpg' )   
            ),
          ),  
          
         
           Positioned(
             
              top: 10,
              left: 60,

              child: Container(
              child: Text(
                  'Crazy_Jack',
                  style: TextStyle(fontSize: 18,  color: Colors.black),
                ),
              ),),
        
              Positioned(
             
              top: 30,
              left: 60,

              child: Container(
              child: Text(
                  'posted 2mins ago',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          


              Positioned(
             
              bottom: 13,
              left: 40,

              child: Container(
              child: Text(
                  '334',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),

              

              Positioned(
             
              bottom: 13,
              left: 110,

              child: Container(
              child: Text(
                  '31',
                  style: TextStyle(fontSize: 16,  color: Colors.grey),
                ),
              ),),
          
          Positioned(
          bottom: 10, left: 80,
          child: Icon(Icons.comment_bank,) ,
          ),
             
          Positioned(
          bottom: 10, left: 15,
         child: Icon(Icons.favorite) ,
          ),
          ],
          ),

          Container(
              height:10,
              width:400,
              
            ),


        Container(
          height: 50,
          width:50,

        child: Image.network('https://www.bing.com/th/id/OGC.e4b6323e19e57f6761b1ce47b7d329e0?pid=1.7&rurl=https%3a%2f%2fwww.bluechipexterminating.com%2fwp-content%2fuploads%2f2020%2f02%2floading-gif-png-5.gif&ehk=Fkb%2fpTHkd59sw%2bOIq06%2f7g4Tgqy29TwCUoUCTChOjWw%3d')
          
          
          ),

              Container(
              height:10,
              width:400,
              
            ),


   
        ],
      // your widgets,
     // your widget...
   
        
 ),
) ,
       
    
    );
  }


}