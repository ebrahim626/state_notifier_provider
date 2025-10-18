import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/item/item_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final item = ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(
            'Collections',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
        return ListTile();
      },),
    );
  }
}
