import 'package:flutter/material.dart';

import 'delivery/delivery.dart';

class FooterSection extends StatefulWidget {
  @override
  _FooterSectionState createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
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
                          "text",
                          // _message, 
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
              ),
    );
  }
}