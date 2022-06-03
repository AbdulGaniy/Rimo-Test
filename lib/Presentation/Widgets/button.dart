import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()  onPressed;
  final String buttonText;
  final Color color ;
  final Color textcolor;
  const Button(
      {Key? key, required this.onPressed, this.buttonText = 'Get Started', required this.color, required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: color
        ),
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 48,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.grey,
        ),
        onPressed:  onPressed,
        child: Text(buttonText, style: TextStyle(
          fontFamily: "Manrope",
          fontSize: 16,
          color: textcolor,)),
      ),
    );
  }
}

class buttonBig extends StatelessWidget {
  final Function()  onPressed;
  final String buttonText;
  final Color color ;

  const buttonBig(
      {Key? key, required this.onPressed, this.buttonText = 'Get Started', required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      width: 170,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.grey,
        ),
        onPressed:  onPressed,
        child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.black,)),
      ),

    );
  }
}