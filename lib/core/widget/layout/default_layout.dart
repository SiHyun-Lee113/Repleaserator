import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final String title;
  final Widget body;
  final bool hasBackButton;
  final List<Widget>? actions;

  const BaseLayout({
    super.key,
    required this.title,
    required this.body,
    this.hasBackButton = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: hasBackButton
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              )
            : Container(),
        title: Text(title),
        centerTitle: true,
        actions: actions ?? [Container()],
      ),
      body: body,
    );
  }
}
