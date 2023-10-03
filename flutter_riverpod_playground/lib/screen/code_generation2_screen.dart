import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/riverpod/code_generation_provider.dart';

class CodeGeneration2Screen extends ConsumerWidget {
  const CodeGeneration2Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(originalStateProvider);
    final state2 = ref.watch(newStateProvider);
    final future1 = ref.watch(originalFutureProvider);
    final future2 = ref.watch(newFutureProvider);
    final notifier1 = ref.watch(originalStateNotifierProvider);
    final notifier2 = ref.watch(newStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeGeneration2Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            state1,
            textAlign: TextAlign.center,
          ),
          Text(
            state2,
            textAlign: TextAlign.center,
          ),
          future1.when(
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
          future2.when(
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
          Text(
            '$notifier1',
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ref
                        .read(originalStateNotifierProvider.notifier)
                        .decrement();
                  },
                  child: Text('Decreament')),
              ElevatedButton(
                  onPressed: () {
                    ref
                        .read(originalStateNotifierProvider.notifier)
                        .increment();
                  },
                  child: Text('Increament')),
            ],
          ),
          Consumer(
            builder: (context, ref, child) {
              final notifier2 = ref.watch(newStateNotifierProvider);

              print('Consumer build');
              return Text(
                '$notifier2',
                textAlign: TextAlign.center,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ref.read(newStateNotifierProvider.notifier).decrement();
                  },
                  child: Text('Decreament')),
              ElevatedButton(
                  onPressed: () {
                    ref.read(newStateNotifierProvider.notifier).increment();
                  },
                  child: Text('Increament')),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              ref.invalidate(newStateNotifierProvider);
            },
            child: Text('Invalidate'),
          ),
        ],
      ),
    );
  }
}
