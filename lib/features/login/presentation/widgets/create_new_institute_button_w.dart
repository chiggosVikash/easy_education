
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateNewInstituteButtonW extends ConsumerWidget {
  final VoidCallback _onPressed;
  const CreateNewInstituteButtonW({Key? key,
  required VoidCallback onPressed,
  }) :_onPressed = onPressed, super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Center(
      child: TextButton(
        onPressed: _onPressed,
        child: const Text(
          'Create New Institute',
        ),
      ),
    );
  }
}