import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/loginwidget.dart';
import 'package:tradingsignals/Widgets/reset.dart';
import 'package:tradingsignals/Widgets/signup.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  // var singleline;
  bool selected = false;
  List<bool> isSelected = [true, false, false, false, false, false];
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool isLogin = true;
  bool isReset = false;
  bool isobsecure = true;
  obsecure() {
    if (isobsecure == true) {
      setState(() {
        isobsecure = false;
      });
    } else {
      setState(() {
        isobsecure = true;
      });
    }
    print('ansar');
  }

  reset() {
    if (isReset == true) {
      setState(() {
        isReset = false;
      });
    } else {
      setState(() {
        isReset = true;
      });
    }
  }

  change() {
    if (isLogin == true) {
      setState(() {
        isLogin = false;
        _email.clear();
        _password.clear();
      });
    } else {
      setState(() {
        isLogin = true;
        _email.clear();
        _password.clear();
        _username.clear();
      });
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/tradinggraph.png'),
                          )),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.22,
                        right: 0,
                        left: 0,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text('Trading Signals',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 178, 168, 168),
                                            fontSize: 24)),
                                  ),
                                  Divider(),
                                  Container(
                                    child: Text(
                                        'Forex, Cryptocurrency, Commondity and Indices Signals app, please login to continue.'),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Select Language',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: isSelected[0],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[0] = val!;
                                                  if (val == true) {
                                                    isSelected[1] = false;
                                                    isSelected[2] = false;
                                                    isSelected[3] = false;
                                                    isSelected[4] = false;
                                                    isSelected[5] = false;
                                                  }
                                                });
                                              },
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                            ),
                                            Text('English')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: isSelected[1],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[1] = val!;
                                                  if (val == true) {
                                                    isSelected[0] = false;
                                                    isSelected[2] = false;
                                                    isSelected[3] = false;
                                                    isSelected[4] = false;
                                                    isSelected[5] = false;
                                                  }
                                                });
                                              },
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                            ),
                                            Text('Spanish')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: isSelected[2],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[2] = val!;
                                                  if (val == true) {
                                                    isSelected[1] = false;
                                                    isSelected[0] = false;
                                                    isSelected[3] = false;
                                                    isSelected[4] = false;
                                                    isSelected[5] = false;
                                                  }
                                                });
                                              },
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                            ),
                                            Text('French')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                              value: isSelected[3],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[3] = val!;
                                                  if (val == true) {
                                                    isSelected[1] = false;
                                                    isSelected[2] = false;
                                                    isSelected[0] = false;
                                                    isSelected[4] = false;
                                                    isSelected[5] = false;
                                                  }
                                                });
                                              },
                                            ),
                                            Text('Hindi')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                              value: isSelected[4],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[4] = val!;
                                                  if (val == true) {
                                                    isSelected[1] = false;
                                                    isSelected[2] = false;
                                                    isSelected[3] = false;
                                                    isSelected[0] = false;
                                                    isSelected[5] = false;
                                                  }
                                                });
                                              },
                                            ),
                                            Text('Portuguese')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              activeColor: Colors.green,
                                              side: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                              value: isSelected[5],
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  isSelected[5] = val!;
                                                  if (val == true) {
                                                    isSelected[1] = false;
                                                    isSelected[2] = false;
                                                    isSelected[3] = false;
                                                    isSelected[4] = false;
                                                    isSelected[0] = false;
                                                  }
                                                });
                                              },
                                            ),
                                            Text('Arabic')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.09,
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      child: Image.asset('assets/logo.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: <Widget>[
                                    Expanded(
                                        child: Divider(
                                      color: Colors.grey,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "OR",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 186, 176, 176)),
                                      ),
                                    ),
                                    Expanded(
                                        child: Divider(
                                      color: Colors.grey,
                                    )),
                                  ]),
                                  // LOGIN OR SIGN UP WIDGETS
                                  isReset
                                      ? reseting(context, _email, reset)
                                      : isLogin
                                          ? logIn(
                                              context,
                                              _email,
                                              _password,
                                              change,
                                              reset,
                                              isobsecure,
                                              obsecure)
                                          : signUp(
                                              context,
                                              _username,
                                              _email,
                                              _password,
                                              change,
                                              isobsecure,
                                              obsecure),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Container(
                                      child: Text(
                                        'Failing to login? contact us now.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    5), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.12,
                                            child:
                                                Image.asset('assets/logo.png'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    5), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Image.asset(
                                                'assets/telegram.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Text('Installation and Login Guide'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                        child: Text(
                                      'WATCH',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
