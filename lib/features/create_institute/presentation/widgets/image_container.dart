
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageContainer extends ConsumerWidget{
  final Widget? _child;
  final DecorationImage? _image;
  const ImageContainer({super.key, Widget? child,required DecorationImage? image}) : _child = child, _image = image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: context.height*.13,width: context.width*.28,
        decoration: BoxDecoration(
            image: _image,
            borderRadius: BorderRadius.circular(40),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(color: context.theme.secondaryContainer,offset:const  Offset(3, -3) ),
              BoxShadow(color: context.theme.surfaceVariant,blurRadius: 2,offset:const  Offset(-1, 1) ),
            ]
        ),
        child: _child
    );
  }

}