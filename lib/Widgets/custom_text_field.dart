import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

   final FormFieldSetter<String> onSubmittted;

  const CustomTextField({ required this.onSubmittted});
  @override
  Widget build(BuildContext context) {

    return Container(
      child:      TextField(
        decoration: InputDecoration(
            hintText: 'write a comment',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )
        ),
        onSubmitted: onSubmittted,


      )
    );
  }
}
