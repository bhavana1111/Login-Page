import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>1200)
        {
          return DesktopNavBar();
        }
        else if(constraints.maxWidth >800&&constraints.maxWidth<1200)
      {
        return DesktopNavBar();
      }
      else 
      {
        return MobileNavBar();
      }
      }
      );
  }
}
class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:20,horizontal: 40),
          child: Container(
       // constraints: BoxConstraints(maxWidth: 1800),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Text('Fashion Here',
            style:TextStyle(
              fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 80.0,
            ),
            ),
            Row(children:<Widget>[
              Text('Home',style:TextStyle(color: Colors.white),),
              SizedBox(width:30),
              Text('About us',style:TextStyle(color: Colors.white),),
              SizedBox(width:30),
              Text('Portfolio',style:TextStyle(color: Colors.white),),
              SizedBox(width:30),
              MaterialButton(color: Colors.pink,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(20.0,5.0),
              ),
              ),
              onPressed: (){},
              child: Text('Get Started',style:TextStyle(color:Colors.white),),
              )
            ])
          ]
        ),
      ),
    );
  }
}
class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
         children:<Widget>[
            Text('Fashion Here',
            style:TextStyle(
              fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30.0,
            ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                Text('Home',style:TextStyle(color: Colors.white),),
                SizedBox(width:30),
                Text('About us',style:TextStyle(color: Colors.white),),
                SizedBox(width:30),
                Text('Portfolio',style:TextStyle(color: Colors.white),),
                ]),
            )
          ]
      ),
    );
  }
}
