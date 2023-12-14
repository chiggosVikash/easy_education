
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FailedDialogue extends ConsumerWidget{
  final String _title;
  final String _errorMessage;
  const FailedDialogue({super.key,required String title,required String errorMessage})
      :
        _title = title,
        _errorMessage = errorMessage
  ;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(_title),
      content: Text(_errorMessage),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text("OK"))
      ],
    );
  }
}