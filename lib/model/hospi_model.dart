

import 'package:flutter/material.dart';

@immutable

class RitodoModel {
  final String? task;
  final bool? complete;

    const RitodoModel(
      {required this.task,   this.complete=false});

  RitodoModel copyWith({String? task,  bool? complete}) {
    return RitodoModel(
        task: task ??= this.task,
       
        complete: complete ??= this.complete);
  }
}


// class TodoModell {
//   final String title;
//   final bool isComplete;
//   TodoModell({required this.title, this.isComplete = false});
//   TodoModell Copywith({String? title, bool? isComplete}) {
//     return TodoModell(
//         title: title ?? this.title, isComplete: isComplete ?? this.isComplete);
//   }
// }