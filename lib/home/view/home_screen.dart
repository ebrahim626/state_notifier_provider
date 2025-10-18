import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(
            'Collections',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
      ),
      body: ,
    );
  }
}
