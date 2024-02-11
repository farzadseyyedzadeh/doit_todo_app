// ignore_for_file: public_member_api_docs, sort_constructors_first
class ToDo {
  final String id;
  final String todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
}
