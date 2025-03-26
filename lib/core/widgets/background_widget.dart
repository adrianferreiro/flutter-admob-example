import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final String? imagePath;

  const BackgroundImage({super.key, required this.child, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset(imagePath ?? 'assets/background.jpg', fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(220),
                  Colors.black.withAlpha(230),
                ],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
