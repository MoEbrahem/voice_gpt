import 'package:chat_gpt/pallete.dart';
import 'package:flutter/material.dart';

class featureBox extends StatelessWidget {
  final boxcolor;
  final String title;
  final String content;
  

  const featureBox({super.key,required this.content,required this.title,required this.boxcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15)
          )
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(
          left: 15,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style:const TextStyle(
                  fontFamily: 'Cera Pro',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Pallete.blackColor
                ),
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(right:20),
              child: Text(
                content,
                style:const TextStyle(
                  fontFamily: 'Cera Pro',
                  fontWeight: FontWeight.bold,
                  color: Pallete.blackColor
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
