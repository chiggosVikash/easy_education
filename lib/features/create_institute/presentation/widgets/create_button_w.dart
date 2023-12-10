import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CreateButtonW extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CreateButtonW({super.key,required this.onPressed,required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        elevation: 5,
        shadowColor: context.theme.secondaryContainer,
        minimumSize: Size(context.width*.4, context.height*.045)
      ),
      onPressed: onPressed, child:  Text(text));
  }
}