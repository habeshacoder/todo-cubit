import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/todo_model.dart';

class TodoCubit extends Cubit<List<TodoModel>> {
  TodoCubit() : super([]);
  void addTodo(String name) {
    if (name.isEmpty) {
      addError('titel can not be empty');
      return;
    }
    final todo = TodoModel(name: name, createdAt: DateTime.now());
    print(state);

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<TodoModel>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print("todocubit-$change");
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    // TODO: implement addError
    super.addError(error, stackTrace);
    print('todocubit$error');
  }
}
