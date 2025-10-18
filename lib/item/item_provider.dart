import 'package:flutter_riverpod/legacy.dart';
import 'package:state_notifier_provider/item/item.dart';

final itemProvider = StateNotifierProvider<ItemNotifier,List<Item>>((ref){
  return ItemNotifier();
});

class ItemNotifier extends StateNotifier<List<Item>>{
  ItemNotifier() : super([]);

}