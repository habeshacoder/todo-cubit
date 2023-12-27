class TodoModel {
  final String name;
  final DateTime createdAt;

  TodoModel({
    required this.name,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'TodoModel{name: $name, createdAt: $createdAt}';
  }
}
