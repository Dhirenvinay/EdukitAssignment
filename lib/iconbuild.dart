import 'package:flutter/material.dart';

class IconScrollable extends StatelessWidget {
  const IconScrollable({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/phonepe.png',
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
