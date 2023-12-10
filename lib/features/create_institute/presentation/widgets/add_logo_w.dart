import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AddLogoW extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? child;
  final String? imageUrl;
  const AddLogoW({super.key,required this.onTap, this.child,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height*.13,width: context.width*.28,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageUrl!=null?AssetImage(imageUrl!):const AssetImage("assets/chiggoslogo.png") ),
          borderRadius: BorderRadius.circular(40),
          color: Theme.of(context).canvasColor,
          boxShadow: [
            BoxShadow(color: context.theme.secondaryContainer,offset:const  Offset(3, -3) ),
            BoxShadow(color: context.theme.surfaceVariant,blurRadius: 2,offset:const  Offset(-1, 1) ),
          ]
        ),
        child:child
      ),
    );
  }
}