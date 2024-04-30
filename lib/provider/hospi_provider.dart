import 'dart:developer';

import 'package:flutter_application_11/model/hospi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class TodoNotifier extends StateNotifier<List<RitodoModel>> {
  TodoNotifier() : super([]);

  void addTodo(RitodoModel todoModel) {
    state = [...state, todoModel];

    log('add');
  }

  void checkTodo(bool complete, int index) {
    state = [
      for (final todoModel in state)
        if (todoModel == state[index])
          todoModel.copyWith(complete: complete)
        else
          todoModel,
    ];
  }

  // void removeTodo(String todoId) {
  //   state = [
  //     for (final todoModel in state)
  //       if (todoModel.id != todoId) todoModel,
  //   ];
  // }

  // void toggle(String todoId) {
  //   state = [
  //     for (final todoModel in state)
  //       if (todoModel.id == todoId)
  //         todoModel.copyWith(completed: !todoModel.completed,)
  //       else
  //         todoModel,
  //   ];
  // }

  void deleteTodo(int index) {
    final todos = state;
    todos.removeAt(index);
    state = List.from(todos);
  }

  void editTask(String controller, int index) {
    final todo = state;
    todo[index] = state[index].copyWith(task: controller);
    state = List.from(todo);
  }
}

final todoProvider =
    StateNotifierProvider<TodoNotifier, List<RitodoModel>>((ref) {
  return TodoNotifier();
  
});
