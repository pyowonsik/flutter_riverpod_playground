import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/workout_model.dart';
import 'package:flutter_riverpod_playground/riverpod/workout_provider.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(workoutProvider);
    final state = ref.watch(workoutProvider.select((value) => value.isSuccess));

    ref.listen(workoutProvider.select((value) => value.weight),
        (previous, next) {
      if (next == 140) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('목표 성공'),
            );
          },
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('WorkOutScreen'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(model.name),
                Text('${model.weight}'),
                Text(state.toString()),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(workoutProvider.notifier).upWeigth();
                },
                child: const Text('Up Weight')),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(workoutProvider.notifier).toggleIsSuccess();
                },
                child: const Text('Success Toggle')),
          ],
        ),
      ),
    );
  }
}
