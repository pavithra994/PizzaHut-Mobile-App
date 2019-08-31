Row(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text("valid until"),
                                              TextFormField(
                                                keyboardType: TextInputType.datetime,
                                                validator: (value){
                                                  if(value.isEmpty){
                                                    return "Card number can't be empty";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Text("CVV"),
                                              TextFormField(
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [new LengthLimitingTextInputFormatter(3)],
                                                validator: (value){
                                                  if(value.isEmpty){
                                                    return "Card number can't be empty";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                      ),