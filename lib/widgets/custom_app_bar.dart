
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('SignSight'),
      backgroundColor: const Color(0xFF2C2A4A),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
