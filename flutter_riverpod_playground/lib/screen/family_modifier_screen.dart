import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(familyModifierProvider(3));
    final state2 = ref.watch(familyModifierProvider(5));

    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyModfierScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            state1.when(
                data: (data) => Text(data.toString()),
                error: (err, stack) => Text(err.toString()),
                loading: () => const CircularProgressIndicator()),
            state2.when(
                data: (data) => Text(data.toString()),
                error: (err, stack) => Text(err.toString()),
                loading: () => const CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
