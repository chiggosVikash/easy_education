import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextW extends ConsumerWidget {
  const LoginTextW({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.width*.03),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Login",style: Theme.of(context).textTheme.displayMedium!.merge(GoogleFonts.alegreyaSansSc(),)),
          const Text("Welcome back to Chiggos!",style: TextStyle(color: Colors.grey),)
        ],
      ));
  }
}