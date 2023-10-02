import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/workout_model.dart';
import 'package:flutter_riverpod_playground/riverpod/workout_provider.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredWorkoutProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkoutScreen'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => FillterState.values
                .map((e) => PopupMenuItem(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList(),
            onSelected: (value) {
              ref.read(filterProvider.notifier).update((state) => value);
            },
          ),
        ],
      ),
      body: ListView(
          children: state
              .map((e) => CheckboxListTile(
                  title: Text(e.name),
                  value: e.isSuccess,
                  onChanged: (bool? value) {
                    ref
                        .read(workoutListProvider.notifier)
                        .toggleIsSuccess(e.name);
                  }))
              .toList()),
    );
  }
}
