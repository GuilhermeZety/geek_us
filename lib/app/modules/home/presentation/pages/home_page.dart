import 'package:flutter/material.dart';
import 'package:geek_us/app/ui/components/menu_bar/menu_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: Container(),
    );
  }
}
