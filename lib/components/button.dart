import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String text;
  // final int buttoColor;
  // final int textColor;
  final Function callback;
  const NumberButton({
    Key? key,
    required this.text,
    required this.callback,
    // required this.buttoColor,
    //required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          callback(text);
        },
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.black,
          textStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
      ),
    );
  }
}
