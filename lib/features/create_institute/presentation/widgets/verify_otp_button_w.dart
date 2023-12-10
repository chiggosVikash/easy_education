
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class VerifyOtpButtonW extends ConsumerWidget{
  final VoidCallback _onPressed;
  const VerifyOtpButtonW({Key? key,required VoidCallback onPressed,}) :_onPressed = onPressed, super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonal(onPressed: _onPressed, child: const Text("Verify"));
  }

}