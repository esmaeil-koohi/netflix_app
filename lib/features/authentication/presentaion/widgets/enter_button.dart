import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  Function() onPress;
  String text;
   EnterButton({Key? key,required this.onPress, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(width * 0.73, 50)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        ),
        onPressed: onPress,
        child:  Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),));
  }
}
