import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({ Key? key }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0,-50),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff32167D),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                color: Color(0xffFFFDFF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                letterSpacing: 0.5,
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                categoryItem(
                  height: 170,
                  width: 150,
                  title: "Sport",
                  boxColor: LinearGradient(
                    colors: [Color(0xff2E96F2),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ),
                ),
                categoryItem(
                  height: 170,
                  width: 150,
                  title: "Sciense",
                  boxColor: LinearGradient(
                    colors: [Color(0xffFD892A),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ),
                  topMargin: 40,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                categoryItem(
                  height: 170,
                  width: 150,
                  title: "Auto",
                  boxColor: LinearGradient(
                    colors: [Color(0xffFD892A),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ),
                ),
                categoryItem(
                  height: 170,
                  width: 150,
                  title: "Tech",
                  boxColor: LinearGradient(
                    colors: [Color(0xff2E96F2),Color(0xffF61A72)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd
                  ),
                  topMargin: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



// ignore: camel_case_types
class categoryItem extends StatelessWidget {
  final double height, width;
  final LinearGradient boxColor;
  final String title;
  final double? topMargin;

  const categoryItem({required this.height,required this.width,required this.title,required this.boxColor,this.topMargin, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: topMargin == null ? 0 : topMargin!),
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
      decoration: BoxDecoration(
          gradient: boxColor,
          borderRadius:
              BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xffFFFDFF),
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 4
            ),
          ),
          Text(
            title+" category",
            style: TextStyle(
              height: .8,
              color: Color(0xaaFFFDFF),
              fontFamily: "Poppins",
              fontSize: 14,
              letterSpacing: .5
            ),
          ),
        ],
      ),
    );
  }
}