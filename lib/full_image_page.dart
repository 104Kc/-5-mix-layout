import 'package:flutter/material.dart';

class FullImagePage extends StatelessWidget {
  final String imageUrl;

  const FullImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // พื้นหลังสีดำ
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: InteractiveViewer( // สามารถ pinch zoom ได้
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
