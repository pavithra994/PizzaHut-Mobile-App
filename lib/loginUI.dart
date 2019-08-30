import 'package:flutter/material.dart';
import 'package:pizzahut_app/register.dart';

void main() => runApp(MyAppLogin());

class MyAppLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          // Container(decoration: new BoxDecoration(image: DecorationImage(image: AssetImage("assets/bac.png"),fit: BoxFit.cover,)),),
          // Positioned.fill(child: Image(image: AssetImage("assets/back.png"),fit: BoxFit.cover,),),
          Center(child: new Image.asset('images/loginBack.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),),
          Container(
            padding: EdgeInsets.only(top:37.0,left: 110.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/logo.png"
                      ),fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:200.0, left:30.0, right:30.0),
            child: Column(
              children: <Widget>[
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.black) 
                    ),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.black) 
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0,),
                Container(
                  alignment: Alignment(1.0, 0),
                  padding: EdgeInsets.only(top: 15.0,left: 20.0),
                  child: InkWell(
                    onTap: (){},
                    child: Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                
                new GestureDetector(
                  onTap: (){print("Taped Login");},
                  child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,   
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ),

                SizedBox(height: 20.0,),
                
                new GestureDetector(
                  onTap: (){print("Clicked fb login");},
                  child: Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 2.0,  
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                         child: Image.asset("images/f.png",color: Colors.white,height: 25.0,),
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text("Sign Up With Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ),

                SizedBox(height: 10.0,),
                new GestureDetector(
                  onTap: (){print("Clicked google login");},
                  child: Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 2.0,  
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                         child: Image.asset("images/g.png",color: Colors.white,height: 25.0,),
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text("Sign Up With Google",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ),
                SizedBox(height: 20.0,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New to PizzaHut ?',
                    style: TextStyle(
                      //add a font family
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> MyAppRegister()));
                    },
                    child: Text("Register",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              )
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          
        ],
      ),
    );
  }
}
