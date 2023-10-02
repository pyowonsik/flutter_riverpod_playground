import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/riverpod/code_generation_provider.dart';

class CodeGeneration3Screen extends ConsumerWidget {
  const CodeGeneration3Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 =
        ref.watch(originalFamilyProdiver(Parameter(number1: 10, number2: 20)));
    final state2 = ref.watch(newFamilyProvider(number1: 100, number2: 200));
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeGeneration3Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '$state1',
            textAlign: TextAlign.center,
          ),
          Text(
            '$state2',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
