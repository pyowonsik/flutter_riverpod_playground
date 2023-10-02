import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/model/workout_model.dart';
import 'package:flutter_riverpod_playground/riverpod/state_notifier_provider_2.dart';

class StateNotifierProviderScreen2 extends ConsumerWidget {
  const StateNotifierProviderScreen2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(workoutListProvider);

    return DefaultLayout(
      title: 'StateNotifierProvider2',
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
