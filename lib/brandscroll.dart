import 'package:flutter/material.dart';
class BrandScroll extends StatelessWidget {
  const BrandScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width/4,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage('assets/images/phonepe.png'),
                        fit: BoxFit.cover)
                ),
                
                // child:
                //           Image.asset('assets/images/phonepe.png'),

              ),
              Text("Zomato")
            ],
          );
        },
      ),
    );
  }
}
