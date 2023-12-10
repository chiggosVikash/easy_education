import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendOtpButtonW extends ConsumerWidget{
  final VoidCallback? _onPressed;
  const SendOtpButtonW({Key? key,required VoidCallback? onPressed,}) :_onPressed = onPressed, super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonal(onPressed: _onPressed, child: const Text("Send"));
  }

}