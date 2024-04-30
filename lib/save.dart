
import 'dart:developer';
import 'package:flutter_application_11/provider/hospi_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/model/hospi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class Save extends ConsumerWidget {
  Save({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                controller: controller,
              ),
            ),
            TextButton(
                onPressed: () {
                 
log('build');
                  if(controller.text.isNotEmpty){
                    ref
                      .read(todoProvider.notifier)
                      .addTodo(RitodoModel(task: controller.text));
                  Navigator.pop(context);
                  }
                   
                },
                child: const Text('Save department')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('cancel'))
          ],
        ),
      ),
    );
  }
}
