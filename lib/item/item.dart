
class Item {
  final String id;
  final String name;
  Item({required this.id,required this.name});

  Item copyWith (String? name, String? id) {
    return Item(id: id ?? this.id, name: name ?? this.name);
  }
}