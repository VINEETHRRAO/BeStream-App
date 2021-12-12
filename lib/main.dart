import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
         backgroundColor: Color(0xff483053),
        appBar: AppBar(
         backgroundColor: Color(0xff290B37),
         title : Row(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children:<Widget>[
			Container( child:     IconButton(
            icon: Icon(Icons.person),
            tooltip: 'profile',
            iconSize: 40,
            

            onPressed: () {},
          ),
         
        ),
		Container(child: Image.asset('assets/images/logo.jpeg' ), width:200,  
    ),
			Container( child:     IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Comment Icon',
            iconSize: 40,
            onPressed: () {},
          ),
         
        ),
		]
		),
      
        ),  
        body:  SingleChildScrollView ( // this will make your body scrollable
  child: Column(
      
   /// your parameters
  
          
        
          children: <Widget>[

            
            Container(
              height:50,
              width:100,
              
            ),
 
          Container(
          height: 300.0,
          width: 336.0,
          color: Colors.black,
          child: Container(
            color: Colors.white,
           child: new Container(child: Image.asset('assets/images/logo.jpeg' ),  
            ),
          ),
          ),

    
            Container(
              height:10,
              width:100,
              
            ),
 
            Container(
          height: 300.0,
          width: 336.0,
          color: Colors.black,
          child: Container(
            
           
                color: Colors.white,
               
            child: new Container(child: Image.asset('assets/images/logo.jpeg' ),   
            ),
          ),
          ),
Container(
              height:10,
              width:100,
              
            ),
 
           Container(
          height: 300.0,
          width: 336.0,
          color: Colors.black,
          child: Container(
            
           
                color: Colors.white,
               
            child: new Container(child: Image.asset('assets/images/logo.jpeg' ),
            ),
          ),
          ),
	Container(
              height:10,
              width:100,
              
            ),
 
	
               Container(
          height: 300.0,
          width: 336.0,
          color: Colors.black,
          child: Container(
            
           
                color: Colors.white,
               
            child: new Container(child: Image.asset('assets/images/logo.jpeg' ), 
            ),
          ),
          ),
	 
              
          Container(
              height:50,
              width:100,
              
            ),
 
   
        ],
      // your widgets,
     // your widget...
   
        
 ),
) ,
        
         bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff290B37),
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Color(0xffffffff),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
           title: new Container(height: 0.0),
            icon: Icon(Icons.home),
            

          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.search),
          ),
           BottomNavigationBarItem(
         title: new Container(height: 0.0),
            icon: Icon(Icons.add_a_photo),
          ),
              BottomNavigationBarItem(
           title: new Container(height: 0.0),
            icon: Icon(Icons.stream),
          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.shop_2),
          ),
      
        ],
      ),
    
    );
  }


}