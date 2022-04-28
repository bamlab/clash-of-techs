import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageUrl;
  static const Size _size = Size(48, 48);

  const Avatar({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: _size,
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.blueGrey,
        onBackgroundImageError: (error,
            stackTrace) {}, // Let's ignore the image loading error for now
      ),
    );
  }
}
