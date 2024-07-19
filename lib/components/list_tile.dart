import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? title;

  const CustomListTile({
    Key? key,
    this.onTap,
    this.leading,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: title,
    );
  }
}
