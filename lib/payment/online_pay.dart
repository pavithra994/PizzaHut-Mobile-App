import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class OnlinePaymentScreen extends StatefulWidget {
  @override
  _OnlinePaymentScreenState createState() => _OnlinePaymentScreenState();
}

class _OnlinePaymentScreenState extends State<OnlinePaymentScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("online payment"),
      ),
      body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Image(
                  image: AssetImage("images/onlinepay.jpg"),
                  fit: BoxFit.cover,
                  color: Colors.white70,
                  colorBlendMode: BlendMode.softLight,
                ),
                new Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Select Card Type"),
                                      CardTypeRadio(),
                                      Text("Card Number"),                                      
                                      CardNumberTextField(),
                                      Row(
                                        children: <Widget>[
                                          Flexible(
                                            child: Column(
                                              children: <Widget>[
                                                Text("valid until"),
                                                GoodThruDateField(),
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            child: Column(
                                              children: <Widget>[
                                                Text("CVV"),
                                                CVVNumberNumberField(),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("Card Holder Name"),
                                      CardHolderNameTextField()
                                    ],
                                  ),
                                )
                              ],
                            ),
                      ),
                ),
                new Wrap(
                  children: <Widget>[
                    new Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Text(" ")

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
                              child: Text("Pay"),
                              color: Colors.green,
                              onPressed: (){
                                if (_formKey.currentState.validate()) {
                                  // If the form is valid, display a Snackbar.
                                  Scaffold.of(context)
                                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                                }
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


class CardTypeRadio extends StatefulWidget {
  @override
  _CardTypeRadioState createState() => _CardTypeRadioState();
}

class _CardTypeRadioState extends State<CardTypeRadio> {
  int _selected = 0;
  void onChanged(int value){
    setState(() {
     _selected = value; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Visa"),
                Radio(
                  onChanged: (int value){onChanged(value);},
                  groupValue: _selected,
                  value: 1,
                ),
                Text("Master"),
                Radio(
                  onChanged: (int value){onChanged(value);},
                  groupValue: _selected,
                  value: 2,
                ),
              ],
            ),
          );
  }
}


class CardNumberTextField extends StatefulWidget {
  @override
  _CardNumberTextFieldState createState() => _CardNumberTextFieldState();
}

class _CardNumberTextFieldState extends State<CardNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [new LengthLimitingTextInputFormatter(16)],
            validator: (value){
              if(value.isEmpty){
                return "Card number can't be empty";
              }
              return null;
            },
          );
  }
}

class GoodThruDateField extends StatefulWidget {
  @override
  _GoodThruDateFieldState createState() => _GoodThruDateFieldState();
}

class _GoodThruDateFieldState extends State<GoodThruDateField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            keyboardType: TextInputType.datetime,
            validator: (value){
              if(value.isEmpty){
                return "Card number can't be empty";
              }
              return null;
            },
          );
  }
}

class CVVNumberNumberField extends StatefulWidget {
  @override
  _CVVNumberNumberFieldState createState() => _CVVNumberNumberFieldState();
}

class _CVVNumberNumberFieldState extends State<CVVNumberNumberField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [new LengthLimitingTextInputFormatter(3)],
            validator: (value){
              if(value.isEmpty){
                return "Card number can't be empty";
              }
              return null;
            },
          );
  }
}

class CardHolderNameTextField extends StatefulWidget {
  @override
  _CardHolderNameTextFieldState createState() => _CardHolderNameTextFieldState();
}

class _CardHolderNameTextFieldState extends State<CardHolderNameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            validator: (value){
              if(value.isEmpty){
                return "Card number can't be empty";
              }
              return null;
            },
          );
  }
}