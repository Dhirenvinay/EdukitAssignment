import 'package:edukitassignment/brandscroll.dart';
import 'package:edukitassignment/containerbuild.dart';
import 'package:edukitassignment/filterbutton.dart';
import 'package:edukitassignment/iconbuild.dart';
import 'package:flutter/material.dart';

class HomeScrenn extends StatefulWidget {
  const HomeScrenn({super.key});

  @override
  State<HomeScrenn> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScrenn> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My App'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {
      //       },
      //     ),
      //   ],
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //SizedBox(height: 15,),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          color: Color(0xff000080),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Row(children: [

                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20,top: 20,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,

                  ),
                  child: Row(children: [
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Icon(Icons.menu),
                    ),
                    Expanded(
                        child: TextField(

                          decoration:const InputDecoration(hintText: 'Search apps & games',border: InputBorder.none),
                    ))
                  ],),
                ),
                SizedBox(width: 15,),
                //Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 40,
                  margin: const EdgeInsets.only(left: 20,top: 20,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,

                  ),
                  child: Row(children: [
                    SizedBox(width: 15,),
                    Text("A",style: TextStyle(color: Color(0xff000080), fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(width: 15,),
                    Container(
                      width: 20,
                      decoration: BoxDecoration(
                        color: Color(0xff000080),
                        borderRadius: BorderRadius.circular(15)

                      ),
                      child: Text("A",style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,
                      ),
                    )
                  ],),
                )
              ],),
                       SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          FilterButton(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          text: 'Features App',
        ),
          FilterButton(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            text: 'Top Apps',
          ),
          FilterButton(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            text: 'Top Games',
          ),
          FilterButton(
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            text: 'News Appp',
          ),
        // FilterButton(text: "Features App"),
        //   FilterButton(text: "Top Apps"),
        //   FilterButton(text: "Top Games"),
        //   FilterButton(text: "News App"),

      ],
      ),
        ),
            ],
          ),
        ),
          if(selectedIndex ==0 )
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 5,),
        Text("Simple, Fast & Source Payments",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ScrollableContainer(),
          Row(children: [ Text("Know more about Latest Apps",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Spacer(),
          Icon(Icons.arrow_forward)
          ],),
            SizedBox(height: 10,),
          IconScrollable(),
          SizedBox(height: 15,),
          Row(children: [ Text("Recommended for you",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            Spacer(),
            Icon(Icons.arrow_forward)
          ],),
            SizedBox(height: 10,),
            BrandScroll(),
        ],),
          if(selectedIndex == 1)
            Center(child: Text("This is Top App",style: TextStyle(fontWeight: FontWeight.bold, fontSize:30 ),)),
          if(selectedIndex == 2)
            Center(child: Text("This is Top Games",style: TextStyle(fontWeight: FontWeight.bold, fontSize:30 ),)),
          if(selectedIndex == 3)
            Center(child: Text("This is News App",style: TextStyle(fontWeight: FontWeight.bold, fontSize:30 ),))

        ],),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Manage"),
        ],
      ),

    );
  }
}
