import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({this.title, this.count});

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widthMedia = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10.0),
      width: widthMedia * 0.20,
      height: heightMedia * 0.30,
      decoration: BoxDecoration(
       
        color:  count > 3 ?  Colors.deepOrangeAccent: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(),
            Text(
              count > 3 ? "play":count.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 100.0,
                  fontFamily: 'Times New Roman'),
            )
          ],
        ),
      ),
    );
  }
}
