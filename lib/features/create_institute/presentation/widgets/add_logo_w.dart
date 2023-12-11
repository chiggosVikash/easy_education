import 'dart:typed_data';

import 'package:easy_education/features/create_institute/presentation/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddLogoW extends ConsumerWidget {
  final VoidCallback onTap;
  final Widget? child;
  final String? imageUrl;
  final Uint8List? _imageBytes;
  const AddLogoW({super.key,required this.onTap, this.child,this.imageUrl,
    Uint8List? imageBytes,
  }) : _imageBytes = imageBytes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child:
          _imageBytes != null ? ImageContainer(image: DecorationImage(image:MemoryImage(_imageBytes)),child: child,)
              :
              imageUrl != null ? ImageContainer(image: DecorationImage(image:NetworkImage(imageUrl!)),child: child,)
                  :
                  ImageContainer(image: null,child: child,),
      );
  }
}