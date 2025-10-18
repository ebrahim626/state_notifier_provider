import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/item/item_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(itemProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(itemProvider.notifier).addItem('ebrahim');
        },
        child: Icon(Icons.add,),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Collections',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          final itemDetail = item[index];
          return ListTile(
              title: Text(itemDetail.name,),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        ref.read(itemProvider.notifier).editItem(itemDetail.id, 'Edited item');
                        },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: (){
                        ref.read(itemProvider.notifier).removeItem(itemDetail.id);
                      },
                      icon: Icon(Icons.delete)),
            ]),
          );
        },
      ),
    );
  }
}
