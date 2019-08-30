import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzahut_app/loginUI.dart';


void main() => runApp(MyAppRegister());

class MyAppRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _countries = <String>['','SL', 'UK', 'US' , 'AUS'];
  String _country='';
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(title: new Text("Hello"),),
      resizeToAvoidBottomPadding: false,
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your first and last name',
                  labelText: 'Name',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter contact number',
                  labelText: 'Contact',
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  WhitelistingTextInputFormatter.digitsOnly,
                ],
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'Enter your email address',
                  labelText: 'Email'
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              new FormField(
                builder: (FormFieldState state){
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.flag),
                      labelText: 'Country',
                    ),
                    isEmpty: _country == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton(
                        value: _country,
                        isDense: true,
                        onChanged: (String newValue){
                          setState(() {
                           _country = newValue;
                           state.didChange(newValue); 
                          });
                        },
                        items: _countries.map((String value){
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.security),
                  hintText: 'Enter a Strong Password',
                  labelText: 'Password'
                ),obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.security),
                  hintText: 'Re Enter Password',
                  labelText: 'Password Confirm'
                ),obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
               SizedBox(height: 30.0,),
                new GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> MyAppLogin()));},
                  child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          "SIGN UP",
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
            ],
          ),
        ),
      ),
    );
  }
}