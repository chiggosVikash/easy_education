import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/create_button.dart';

class SchoolCreatedSuccessDialog extends ConsumerWidget {
  const SchoolCreatedSuccessDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        AlertDialog(
          surfaceTintColor: context.theme.primary,
          title: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal.shade300, width: 4),
                    color: Colors.teal.shade100,
                    shape: BoxShape.circle),
                height: context.height * .07,
                width: context.height * .07,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Icon(
                    Icons.done_all_rounded,
                    color: context.theme.secondary,
                    size: constraints.biggest.height * .7,
                  );
                }),
              ),
              Container(
                  margin: EdgeInsets.only(top: context.height * .03),
                  child: Text(
                    "Successful !",
                    style: GoogleFonts.cantataOne(
                        color: context.theme.surfaceTint, height: .5),
                  )),
            ],
          ),
          content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your school has been created successfully .",
                  style: TextStyle(color: context.theme.outline),
                ),
                SizedBox(
                  height: context.height * .005,
                ),
                Text(
                  "Now create first/main branch of your school.",
                  style: GoogleFonts.openSans(color: Colors.grey),
                )
              ]),
          actions: [
            FilledButton.tonal(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel")),
            CreateButton(
              text: "Create Branch",
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                // Navigator.pushNamed(context, CreateBranch.routeAddress);
              },
            )
          ],
        ),
      ],
    );
  }
}
