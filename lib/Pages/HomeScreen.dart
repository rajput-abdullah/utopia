import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utopia/Constants/ConstantColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  var width=0.0;
  var height=0.0;
  TabController _tabController;
  var index =3;


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  List<Tab> myTabs= <Tab>[
    new Tab(child: Container(

      color: ConstantColor.BACKGROUND,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex:2,
              child: Image.asset("assets/splash.png")),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Sign in To Utopia"
                    , style: TextStyle(color: ConstantColor.FONT_COLOR, fontWeight: FontWeight.bold, fontSize: 22), textAlign: TextAlign.center,
                  ),
                  Text(
                    "Welcome back! Sign in to get into your account"
                    , style: TextStyle(color: ConstantColor.FONT_COLOR), textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Theme(
                    data: ThemeData(
                        backgroundColor: Colors.white,
                        hintColor: Colors.green),
                    child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintStyle: TextStyle(
                              fontSize: 15, color: Colors.grey[100]),
                          hintText: 'Email/Phone',
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("You can always change this later!", textAlign: TextAlign.left, style: TextStyle(color: ConstantColor.BUTTON_COLOR),),
                    ],
                  ),
                  Theme(
                    data: ThemeData(
                        backgroundColor: Colors.white,
                        hintColor: Colors.green),
                    child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          counterText: "",
                          hintStyle: TextStyle(
                              fontSize: 15, color: Colors.grey[100]),
                          hintText: 'Password',
                          contentPadding: EdgeInsets.only(left: 10, top: 15),
                          suffixIcon: Icon(Icons.remove_red_eye, color: ConstantColor.FONT_COLOR,),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: ConstantColor.BUTTON_COLOR,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(

                            alignment: Alignment.center,
                            child: Text(
                              "Sign up"
                              , style: TextStyle(color: ConstantColor.FONT_COLOR), textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(width: 40,),

                          Align(

                              alignment: Alignment.centerRight,
                              child: Icon(Icons.chevron_right, color: ConstantColor.FONT_COLOR,))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Forget Password?", textAlign: TextAlign.left, style: TextStyle(color: ConstantColor.FONT_COLOR),),


                ],
              ),
            ),
          ),
        ],
      ),
    ),),
    new Tab(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex:2,
              child: Image.asset("assets/splash.png")),
          Expanded(
            flex: 4,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Welcome To Utopia"
                    , style: TextStyle(color: ConstantColor.BUTTON_COLOR, fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                  ),
                  Text(
                    "Fewer meeting, less internal emails, all your tools integrated."
                    , style: TextStyle(color: ConstantColor.BUTTON_COLOR), textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: MaterialButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: ConstantColor.BUTTON_COLOR,

                    child: Text(
                      "Sign up"
                      , style: TextStyle(color: ConstantColor.FONT_COLOR), textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 150,
                  height: 55 ,
                  child: MaterialButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: ConstantColor.BUTTON_COLOR)

                    ),

                    child: Text(
                      "Sign in"
                      , style: TextStyle(color: ConstantColor.BUTTON_COLOR), textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    ),
    new Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
     width = MediaQuery.of(context).size.width;
     height = MediaQuery.of(context).size.height;




     return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
        // floatingActionButton: Row(children: [
        //   new FloatingActionButton(onPressed: (){}, child:Text("ads"),backgroundColor: ConstantColor.FONT_COLOR, elevation: 0,),
        //   new FloatingActionButton(onPressed: (){},child:Text("qwe"), backgroundColor: ConstantColor.FONT_COLOR,elevation: 0,),
        //   new FloatingActionButton(onPressed: (){}, child:Text("eeq"),backgroundColor: ConstantColor.FONT_COLOR,elevation: 0,),
        // ],),
        body: Container(

          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.white,
          child: TabBarView(
            controller: _tabController,
            children: myTabs.map((Tab tab) {
              return new Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: tab);
            }).toList(),
          ),
              // children: <Widget>[
              //   Container(),
              //   Container(),
              // ]
          ),
        ),




    );
  }
}

