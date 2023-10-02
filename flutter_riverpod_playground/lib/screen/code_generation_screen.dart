import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(newFamilyProvider(number1: 10, number2: 20));

    print('build');
    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'state1 : $state1',
            textAlign: TextAlign.center,
          ),
          state2.when(
            data: (data) {
              return Text(
                'state2 : $data',
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(err.toString()),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          state3.when(
            data: (data) {
              return Text(
                'state3 : $data',
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(err.toString()),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Text(
            'state4 : $state4',
            textAlign: TextAlign.center,
          ),
          // 1. Consumer 위젯에서 렌더링 효율 높임
          // 2. child를 사용해 렌더링 효율 한번더 높임
          Consumer(
            builder: (context, ref, child) {
              print('builder build');
              final state5 = ref.watch(newStateNotifierProvider);
              return Row(
                children: [
                  Text('state5 : $state5 '),
                  if (child != null) child,
                ],
              );
            },
            child: Text('Hello'),
          ),
          ElevatedButton(
              onPressed: () {
                ref.read(newStateNotifierProvider.notifier).increment();
              },
              child: const Text('Increment')),
          ElevatedButton(
              onPressed: () {
                ref.read(newStateNotifierProvider.notifier).decrement();
              },
              child: const Text('Decrement')),
          ElevatedButton(
              onPressed: () {
                ref.invalidate(newStateNotifierProvider);
              },
              child: const Text('Invalidate')),
        ],
      ),
    );
  }
}

class _StateFiveWidget extends ConsumerWidget {
  const _StateFiveWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state5 = ref.watch(newStateNotifierProvider);

    return Text(
      'state5 : $state5',
      textAlign: TextAlign.center,
    );
  }
}
