// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliveryLocationScreen extends StatefulWidget {
  @override
  _DeliveryLocationScreenState createState() => _DeliveryLocationScreenState();
}

class _DeliveryLocationScreenState extends State<DeliveryLocationScreen> {
  // Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("select delivery location"),
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
                          Text("deliver page")
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
                          "_message",
                          style: TextStyle(color: Colors.white)
                        ),
                      ),
                      RaisedButton(
                        child: Text("next"),
                        color: new Color(0xff622f74),
                        onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>DeliveryLocationScreen()));
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