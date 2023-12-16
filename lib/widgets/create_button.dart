import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/dialogues/school_created_succesful_dialog.dart';

class CreateButton extends ConsumerStatefulWidget {
  final VoidCallback onPressed;
  final String text;
  const CreateButton({super.key,required this.text,required this.onPressed});

  @override
  ConsumerState<CreateButton> createState() => _CreateButtonState();
}

class _CreateButtonState extends ConsumerState<CreateButton> {
@override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        elevation: 5,
        shadowColor: context.theme.secondaryContainer,
        minimumSize: Size(context.width*.4, context.height*.045)
      ),
      onPressed: widget.onPressed , child:  Text(widget.text));
  }

  void _showCreatedDialog() {
    showGeneralDialog(context: context,
        transitionDuration: const  Duration(milliseconds: 600),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          final position = Tween<Offset>(begin: const Offset(0, -1),end: Offset.zero).animate(
              CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn));
          return SlideTransition(position: position ,child: child,);
        },
        pageBuilder: (context,anim,secAnim) => const SchoolCreatedSuccessDialog());
  }



}