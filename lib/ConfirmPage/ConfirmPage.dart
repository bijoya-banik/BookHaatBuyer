import 'package:Easy_Shopping/Navigation/Navigation.dart';
import 'package:Easy_Shopping/NavigationAnimation/routeTransition/routeAnimation.dart';
import 'package:Easy_Shopping/main.dart';
import 'package:flutter/material.dart';


class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  
  Future<bool> _onWillPop() async {
 
                bottomNavIndex = 0;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Navigation()));

             
   }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

       backgroundColor: Colors.white,
        body: 
          Stack(
            children: <Widget>[
           

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
        decoration: BoxDecoration(
                    
                      
                      // colorFilter: new ColorFilter.mode(
                      //     Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    ),
                    child: Image.asset("assets/images/icons8_ok.png",
                    color:appColor,
                    height: 80,
                    width: 80,
                    fit: BoxFit.fill,
                    ),
                     
        ),
                  ),

                  SizedBox(height:10),
                Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:15),
                  child: Text(
                    "Thank You for your order",
                       style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    
                    textAlign: TextAlign.justify,
                    //overflow: TextOverflow.ellipsis,
                    //maxLines: 2,
                  ),
                ),
                  Padding(
                  padding: EdgeInsets.only(top:5),
                  child: Text(
                    "Your bill will be received by cash on delivery",
                       style: TextStyle(
                          color: Color(0xFF2A2A2A),
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    
                    textAlign: TextAlign.justify,
                    //overflow: TextOverflow.ellipsis,
                    //maxLines: 2,
                  ),
                ),
              ],
            ),

                  SizedBox(height:20),
RaisedButton(
  padding: EdgeInsets.only(left:20, right:20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: appColor)),
      onPressed: () {
          bottomNavIndex = 0;
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Navigation()));

      },
      color:Colors.white.withOpacity(0.85),
      textColor: appColor,
      child: Text("Back to Home".toUpperCase(),
        style: TextStyle(fontSize: 14)),
    ),
                ],
              ),


        
            ],
          ),
        
      ),
    );
  }
}