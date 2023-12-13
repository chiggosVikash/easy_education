
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BeginLoginButtonW extends ConsumerWidget{
  final VoidCallback? _onPressed;
  const BeginLoginButtonW({super.key,required VoidCallback? onPressed,}) :_onPressed = onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonalIcon(onPressed:_onPressed ,
        icon: const Icon(Icons.login_outlined),
        label: const Text("Begin Login")
    );
  }

}