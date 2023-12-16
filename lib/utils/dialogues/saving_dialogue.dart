import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavingDialogue extends ConsumerWidget {
  final String _title;
  const SavingDialogue({super.key,required String title}):_title = title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(_title),
      content: const RepaintBoundary(child: LinearProgressIndicator()),
    );
  }
}
