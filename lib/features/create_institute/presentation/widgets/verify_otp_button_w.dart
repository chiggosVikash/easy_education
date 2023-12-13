
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class VerifyOtpButtonW extends ConsumerWidget{
  final VoidCallback _onPressed;
  final String _buttonText;
  const VerifyOtpButtonW({Key? key,required VoidCallback onPressed,
  required String buttonText,
  }) :
        _onPressed = onPressed,
        _buttonText = buttonText,
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonal(onPressed: _onPressed, child: Text(_buttonText));
  }

}