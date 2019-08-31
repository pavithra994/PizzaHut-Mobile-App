// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pizzahut_app/order/order_confirm.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class SelectPizzaScreen extends StatefulWidget {
  @override
  _SelectPizzaScreenState createState() => _SelectPizzaScreenState();
}

class _SelectPizzaScreenState extends State<SelectPizzaScreen> {
  // Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("select pizza"),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Text("data")
            // GoogleMap(
            //   mapType: MapType.normal,
            //   initialCameraPosition: CameraPosition(target: LatLng(7.000582, 79.949113),zoom: 10),
            //   onMapCreated: (GoogleMapController controller){
            //     _controller.complete(controller);
            //   },
            // ),
          ),
          new Wrap(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("menu page")
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
                          "<footer texts>", // add footer text here
                          style: TextStyle(color: Colors.white)
                        ),
                      ),
                      RaisedButton(
                        child: Text("next"),
                        color: Colors.green,
                        onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>OrderConfirmScreen()));
                        },
                      )
                    ],
                  )
                ],
              )
              ],
            ),

          ],
        ),
    );
  }
}