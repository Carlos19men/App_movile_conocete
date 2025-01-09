import 'package:flutter/material.dart';

class Custom_appbar extends StatelessWidget implements PreferredSizeWidget {
  const Custom_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text("Conócete"),
      centerTitle: true,
      titleTextStyle: Theme.of(context).textTheme.headlineLarge,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}