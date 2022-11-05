import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/contactus.dart';
import 'package:tradingsignals/Widgets/custombutton.dart';
import 'package:tradingsignals/Widgets/homescreenHadingText.dart';
import 'package:tradingsignals/Widgets/networkImage.dart';
import 'package:tradingsignals/Widgets/gradientIconReource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isNotifications = false;
  bool isDark = false;
  bool isQuickLaunch = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final decoration = BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 208, 207, 207),
        ),
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 2),
          )
        ]);
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.12,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Item(context, 'assets/dollar.png', 'Subscribe', screenWidth,
                      screenHeight),
                  Item(context, 'assets/signals.png', 'TSMT5', screenWidth,
                      screenHeight),
                  Item(context, 'assets/faq.png', 'FAQ', screenWidth,
                      screenHeight),
                  Item(context, 'assets/help.png', 'Help', screenWidth,
                      screenHeight),
                  Item(context, 'assets/rate.png', 'Rate', screenWidth,
                      screenHeight),
                  Item(context, 'assets/tel2.png', 'Telegram', screenWidth,
                      screenHeight),
                  Item(context, 'assets/4rexteam.png', '4rex Team', screenWidth,
                      screenHeight),
                  Item(context, 'assets/facebook.png', 'Facebook', screenWidth,
                      screenHeight),
                  Item(context, 'assets/yt.png', 'YouTube', screenWidth,
                      screenHeight),
                ],
              ),
            ),
            myInboxAndAccountManager(
                context, screenHeight, screenWidth, decoration),
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                height: screenHeight * 0.31,
                width: screenWidth,
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Chatroom',
                        style: TextStyle(
                            color: Color.fromARGB(255, 22, 57, 85),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          'Join Public Telegram Group to interact and share knowledge with others',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Center(
                      child: AvatarGlow(
                        glowColor: Colors.blue,
                        endRadius: screenHeight * 0.1,
                        duration: Duration(milliseconds: 2000),
                        repeat: true,
                        animate: true,
                        showTwoGlows: true,
                        repeatPauseDuration: Duration(milliseconds: 100),
                        child: Material(
                          elevation: 8.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/tel.jpg'),
                            radius: 28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(
              height: screenHeight * 2,
              width: screenWidth,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: screenHeight * 1.5,
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  decoration: decoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      homeHadings(context, 'VIP & Anti Ads'),
                      Text(
                        'Subcribe to continue enjoying out signals',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_sharp,
                            color: Colors.green,
                            size: 30,
                          ),
                          Text(
                            '10 - 35 Signals per day',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_sharp,
                            color: Colors.green,
                            size: 30,
                          ),
                          Text(
                            'Join VIP telegram channel',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_sharp,
                            color: Colors.green,
                            size: 30,
                          ),
                          Text(
                            'Disable adverts',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Container(
                        child: Text(
                          'Subcribe by choosing a plan that fits your budget below',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      homeHadings(context, 'VISA/BANK CARD'),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      planstoSubcribe(
                          context, screenHeight, screenWidth),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      Container(
                        child: Text(
                            'Trade spikes with the best spikes squad on telegram. Note that this is only available to those with equity \$50+.'),
                      ),
                      SizedBox(
                        width: screenWidth,
                        child: Row(children: [
                          Text(
                            'Spikes \$10 Weekly',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Flexible(flex: 2, child: Container()),
                          CustomButton(
                            func: () {},
                            text: 'SUBSCRIBE',
                            width: 0.3,
                            color: Colors.red,
                            fontsize: 14,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      homeHadings(context, 'Other Paymeny Methods'),
                      Container(
                        child: Text(
                          'Contact us for any other payment methods you would like to use.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth,
                        height: screenHeight * 0.15,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            othermethods(context, screenHeight, screenWidth,
                                'assets/wire.png', 'Wire'),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            othermethods(context, screenHeight, screenWidth,
                                'assets/astropay.png', 'Astropay'),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            othermethods(context, screenHeight, screenWidth,
                                'assets/perfectmoney.jpg', 'Perfect Money'),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            othermethods(context, screenHeight, screenWidth,
                                'assets/wu.png', 'Western Union'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: CustomButton(
                        func: () {},
                        text: 'CONTACT US',
                        color: Colors.red,
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      homeHadings(context, 'My Wallet'),
                      Container(
                        child: Text(
                            "Don't have money? Daily check in to Unlock Subcription."),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Center(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 180, 229, 251),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Image.asset('assets/adbutton.png',
                                height: screenHeight * 0.05),
                          ),
                        ),
                      ),
                      Text(
                        'Last Check In: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: screenHeight * 0.07,
                        width: screenWidth,
                        color: Colors.amber.withOpacity(0.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                'Balance',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Flexible(flex: 2, child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Text(
                                '\$0',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                            'Support app development and maintenance by donating. Thank you in anticipation.'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: screenWidth,
                        height: screenHeight * 0.07,
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('\$2'),
                              ),
                            ),
                          ),
                          Flexible(flex: 1, child: Container()),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CustomButton(
                              func: () {},
                              text: 'DONATE',
                              width: 0.72,
                              color: Colors.red,
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // new part of screen
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                height: screenHeight * 0.35,
                width: screenWidth,
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width,
                        child: networkImageWidget(
                            context,
                            'https://az705044.vo.msecnd.net/20200611/6-11-2020-5-13-50-pm.png',
                            BoxFit.contain),
                      ),
                    ),
                    homeHadings(context, 'Recommended Broker'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          'Trade 24/7, Trade with Deriv today! ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Center(
                      child: CustomButton(
                        func: () {},
                        text: 'SIGN-UP',
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // new part of screen
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          child: networkImageWidget(
                              context,
                              'https://ivssolutions.co.in/wp-content/uploads/2020/03/ivssolutions-technical-support-9.png',
                              BoxFit.contain)),
                    ),
                    homeHadings(context, 'Support'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                            style: TextStyle(fontSize: 18),
                            'Have any concerns? please contact us via Email or telegram below. Note that we will only respond to relevent questions, business queries or ideas..'),
                      ),
                    ),
                    contactus(context, true),
                  ],
                ),
              ),
            ),
            //new part of screen
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          child: networkImageWidget(
                              context,
                              'https://st2.depositphotos.com/1021974/11498/i/950/depositphotos_114987484-stock-photo-two-gear-wheels.jpg',
                              BoxFit.contain)),
                    ),
                    homeHadings(context, 'Settings'),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.green,
                            side: BorderSide(color: Colors.green, width: 2),
                            value: isNotifications,
                            onChanged: (bool? val) {
                              setState(() {
                                isNotifications = val!;
                              });
                            }),
                        Text('Notifications'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.green,
                            value: isDark,
                            side: BorderSide(color: Colors.green, width: 2),
                            onChanged: (bool? val) {
                              setState(() {
                                isDark = val!;
                              });
                            }),
                        Text('Dark Mode'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.green,
                            side: BorderSide(color: Colors.green, width: 2),
                            value: isQuickLaunch,
                            onChanged: (bool? val) {
                              setState(() {
                                isQuickLaunch = val!;
                              });
                            }),
                        Text('Quick Launch'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //new part
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                height: screenHeight * 0.28,
                width: screenWidth,
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    homeHadings(context, 'Adverts'),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: networkImageWidget(
                              context,
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                              BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget othermethods(BuildContext context, double screenHeight,
    double screenWidth, String path, String name) {
  return Container(
    child: Column(
      children: [
        Container(
          height: 100,
          width: screenWidth * 0.25,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    path,
                  ))),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 10),
        )
      ],
    ),
  );
}

Widget planstoSubcribe(BuildContext context, double screenHeight,
    double screenWidth) {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 218, 218, 218),
        borderRadius: BorderRadius.circular(20)),
    child: SizedBox(
      height: screenHeight * 0.25,
      width: screenWidth,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "1 weekly \$8.2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        func: () {},
                        text: 'SUBSCRIBE',
                        width: 0.37,
                        color: Colors.blue,
                        fontsize: 14,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1 weekly \$8.2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        func: () {},
                        text: 'SUBSCRIBE',
                        width: 0.37,
                        color: Colors.blue,
                        fontsize: 14,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1 weekly \$8.2", style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                      CustomButton(
                        func: () {},
                        text: 'SUBSCRIBE',
                        width: 0.37,
                        color: Colors.blue,
                        fontsize: 14,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("1 weekly \$8.2 👑", style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                      CustomButton(
                        func: () {},
                        text: 'SUBSCRIBE',
                        width: 0.37,
                        color: Colors.red,
                        fontsize: 14,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget profilepic(BuildContext context, double radius) {
  return Container(
    child: CircleAvatar(
      radius: radius + 5,
      backgroundColor: Color.fromARGB(255, 30, 71, 104),
      child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/tradinggraph.png',
          ),
          radius: radius),
    ),
  );
}

Widget Item(BuildContext context, String path, String name, double screenWidth,
    double screenHeight) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: Column(
      children: [
        Container(
          height: screenHeight * 0.07,
          width: screenWidth * 0.15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    path,
                  ))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Center(
            child: Text(
          name,
          style: TextStyle(
              color: Color.fromARGB(
                255,
                182,
                175,
                175,
              ),
              fontSize: 12),
        ))
      ],
    ),
  );
}

Widget myInboxAndAccountManager(BuildContext context, double screenHeight,
    double screenWidth, Decoration decoration) {
  return Container(
    padding: EdgeInsets.all(8),
    child: Container(
      height: screenHeight * 0.3,
      width: screenWidth,
      decoration: decoration,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        homeHadings(context, 'My Inbox'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            padding: EdgeInsets.all(2),
            width: screenWidth,
            height: screenHeight * 0.1,
            decoration: decoration,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: profilepic(
                      context, MediaQuery.of(context).size.height * 0.04),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.66,
                      child: Row(
                        children: [
                          Text(
                            '4rex Team Admin',
                            style: TextStyle(fontSize: 12),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 2,
                          ),
                          Container(
                            height: screenHeight * 0.03,
                            width: screenWidth * 0.06,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.blue, Colors.red]),
                                borderRadius: BorderRadius.circular(2)),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: GradientIcon(
                                    Icons.arrow_forward,
                                    15,
                                    LinearGradient(
                                        colors: [Colors.blue, Colors.red])),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.66,
                      child: Row(children: [
                        Expanded(
                          child: Text(
                            'Welcome to trading signals. We bring you the best and most popular trading signals in the industory. Feel free to contact with us',
                            style: TextStyle(fontSize: 12),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

        //
        homeHadings(context, 'Account Managers'),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.3,
            decoration: decoration,
            child: Column(
              children: [
                profilepic(context, MediaQuery.of(context).size.height * 0.03),
                Text('Admin')
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}
