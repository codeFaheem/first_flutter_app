import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        // style: ButtonStyle(
        //   foregroundColor: MaterialStateProperty.all(Colors.black),
        // ),
        style: ElevatedButton.styleFrom(onPrimary: Colors.black),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
