import 'package:flutter/material.dart';
import 'package:pizzahut_app/loginUI.dart';
import 'package:pizzahut_app/register.dart';

import 'delivery/delivery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pizza Hut",
      theme: new ThemeData(
        primaryColor: new Color(0xff212121),
        accentColor: new Color(0xffba68c8),
        // iconTheme: new IconThemeData(color: Colors.white)
      ),
      home: PizzaHutHomePage(title: 'Pizza test home page'),
    );
  }
}

class PizzaHutHomePage extends StatefulWidget {
  PizzaHutHomePage({Key key, this.title}) : super(key : key);

  final String title;
  @override
  _PizzaHutHomePageState createState() => _PizzaHutHomePageState();
}

class _PizzaHutHomePageState extends State<PizzaHutHomePage> {
  String _message = "welcome";
  void _pressed(String text){
    setState(() {
     _message = text; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.person),
            color: Colors.white,
            onPressed: (){_pressed('clicked');},
          )
        ],
        // leading: IconButton(
        //   icon: new Icon(Icons.menu),
        //   onPressed: (){_pressed('Drawer');},
        // ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Welcome'),
              decoration: BoxDecoration(
                color: Colors.redAccent
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){},
            ),
            ListTile(
              title: Text('Sign In'),
              leading: Icon(Icons.assignment_ind),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> MyAppLogin()));
              },
            ),
            ListTile(
              title: Text('Register'),
              leading: Icon(Icons.library_add),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> MyAppRegister()));
              },
            ),
          ],
        ),
      ),

      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("images/pizza_background.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
          new Wrap(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            new Draggable<bool>(
                              data: true,
                              child: Image(
                                              image: AssetImage("images/pizza_slice_button.png"),
                                            ),
                              childWhenDragging: Image(
                                              image: AssetImage("images/pizza_slice_button.png"),
                                              color: Colors.black87,
                                              colorBlendMode: BlendMode.darken,
                                            ),
                              feedback: Image(
                                              image: AssetImage("images/pizza_slice_button.png"),
                                            ),
                            ),
                            new SizedBox(height: 100),//for gap between widgets
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.green,
                                  child: DragTarget<bool>(
                                    builder: (BuildContext context, candidateData, rejectedData) {
                                      return Text("Delivery");
                                    },
                                    onAccept: (data){
                                      if(data){
                                        print("Delivery");
                                        _pressed('Delivery');
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>DeliveryLocationScreen())
                                          );
                                      }
                                    }, 
                                  ),
                                ),
                                new Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.green,
                                  child: DragTarget<bool>(
                                    builder: (BuildContext context, candidateData, rejectedData) {
                                      return Text("Pick up");
                                    },
                                    onAccept: (data){
                                      if(data){
                                        print("Pick up");
                                        _pressed("Pick up");
                                      }
                                    }, 
                                  ),
                                )
                              ],
                            )
                          ],
                        ),

              ),
              new Stack(
                children: <Widget>[
                  new Image(
                    image: new AssetImage("images/pizza_hut_footer.png"),
                    fit: BoxFit.fitWidth,
                    // alignment: Alignment(0.5, 10),
                    ),
                  new Column(
                    children: <Widget>[
                      SizedBox(height: 80),
                      Center(
                        child: new Text(
                          _message,
                          style: TextStyle(color: Colors.white)
                        ),
                      )
                    ],
                  )
                ],
              )
              ],
            ),

          ],
        )
    );
  }
}
          
          
      