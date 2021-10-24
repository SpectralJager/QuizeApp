import 'package:flutter/material.dart';

class PopularQuiz extends StatefulWidget {
  const PopularQuiz({ Key? key }) : super(key: key);

  @override
  _PopularQuizState createState() => _PopularQuizState();
}

class _PopularQuizState extends State<PopularQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                popularQuizItem(
                  height: 170, 
                  width: 150, 
                  title: "Some", 
                  boxColor: LinearGradient(
                    colors: [Color(0xffFD892A),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ), 
                  icon: Icons.add_chart
                ),
                popularQuizItem(
                  height: 150, 
                  width: 150, 
                  title: "Some", 
                  boxColor: LinearGradient(
                    colors: [Color(0xff2E96F2),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ), 
                  icon: Icons.add_chart
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

// ignore: camel_case_types
class popularQuizItem extends StatelessWidget {
  final double height, width;
  final LinearGradient boxColor;
  final String title;
  final IconData icon;
  const popularQuizItem({required this.height,required this.width,required this.title,required this.boxColor,required this.icon, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
      decoration: BoxDecoration(
          gradient: boxColor,
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
                icon,
                color: Color(0xffFFFDFF),
                size: 50,
              )
            ],
          ),
          Text(
            title,
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
        ],
      ),
    );
  }
}