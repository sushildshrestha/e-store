import 'package:e_store/components/mydrawer.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB0007),
        title: Text(
          'S T O R E      P A G E ',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [],
      ),
    );
  }
}
