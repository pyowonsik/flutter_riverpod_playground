import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/riverpod/stream_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(streamProvider);
    return DefaultLayout(
        title: 'StreamProviderScreen',
        body: Center(
            child: state.when(
                data: (data) => Text(data.toString()),
                error: (err, stack) => Text(err.toString()),
                loading: () => const CircularProgressIndicator())));
  }
}
