import 'package:flutter_riverpod/legacy.dart';
import 'package:state_notifier_provider/item/item.dart';

final itemProvider = StateNotifierProvider<ItemNotifier,List<Item>>((ref){
  return ItemNotifier();
});

class ItemNotifier extends StateNotifier<List<Item>>{
  ItemNotifier() : super([]);

  void addItem(String name){
    final item = Item(id: DateTime.now().toString(), name: name);
    state.add(item);
    state =  state.toList();
  }
  void removeItem (String id) {
    state.removeWhere((item)=> id == item.id);
    state = state.toList();
  }
  void editItem (String id, String name) {
    int currentItem = state.indexWhere((item)=> id == item.id);
    state[currentItem] = Item(id: id, name: name);
    state = state.toList();
  }
}