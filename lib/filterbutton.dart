import 'package:flutter/material.dart';



class FilterButton extends StatelessWidget {
   final VoidCallback onTap;
   final String text;
   FilterButton({

     required this.onTap,
     required this.text,
   });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

  }
}
