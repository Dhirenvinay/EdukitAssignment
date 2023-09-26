import 'package:flutter/material.dart';
class ScrollableContainer extends StatelessWidget {
  const ScrollableContainer({super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: 100,
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 400,
                  width: MediaQuery.of(context).size.width/1.5,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage('assets/images/phonepe.png'),
                  fit: BoxFit.cover)
            ),
                 // child:
           //           Image.asset('assets/images/phonepe.png'),

          );
        },
      ),
   );
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Container(
    //     width: 300, //
    //     child: Row(
    //       children:[
    //         Image.asset('assets/images/phonepe.png'),
    //       ],
    //     ),
    //   ),
    // );
  }
}






