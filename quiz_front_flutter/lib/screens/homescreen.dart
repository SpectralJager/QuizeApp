import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
            color: Color(0xff4ECFBC),
            fontSize: 28,
            fontWeight: FontWeight.w700,
            fontFamily: "Poppins",
            letterSpacing: 5,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Color(0xff1E1047),
        elevation: 0,
      ),
      endDrawer: Drawer(),
      backgroundColor: Color(0xffFD892A),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 290,
            decoration: BoxDecoration(
                color: Color(0xff1e1048),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Quiz",
                    style: TextStyle(
                      color: Color(0xffFFFDFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 150,
                        height: 170,
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffFD892A), Color(0xffF61A72)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.add_chart,
                                  color: Color(0xffFFFDFF),
                                  size: 50,
                                )
                              ],
                            ),
                            Text(
                              "Some",
                              style: TextStyle(
                                color: Color(0xffFFFDFF),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              "Quiz",
                              style: TextStyle(
                                color: Color(0xffFFFDFF),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                height: 0.9
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0,3,0,0),
                              width: double.infinity,
                              height: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  //print(10);
                                },
                                child: Text("Start",style: TextStyle(fontSize: 16,color: Color(0xffF61A72)),),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                  backgroundColor: MaterialStateProperty.all(Color(0xffFFFDFF)),
                                  elevation: MaterialStateProperty.all(10)
                                  ),
                            ))
                        ],),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff2E96F2), Color(0xffF61A72)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                              child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.add_chart,
                                  color: Color(0xffFFFDFF),
                                  size: 50,
                                )
                              ],
                            ),
                            Text(
                              "Some",
                              style: TextStyle(
                                color: Color(0xffFFFDFF),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              "Quiz",
                              style: TextStyle(
                                color: Color(0xffFFFDFF),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                height: 0.9
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0,3,0,0),
                              width: double.infinity,
                              height: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  //print(10);
                                },
                                child: Text("Start",style: TextStyle(fontSize: 16,color: Color(0xffF61A72)),),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                  backgroundColor: MaterialStateProperty.all(Color(0xffFFFDFF)),
                                  elevation: MaterialStateProperty.all(10)
                                  ),
                            )
                          )
                        ],),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
    ));
  }
}
