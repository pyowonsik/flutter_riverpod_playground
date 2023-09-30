import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/layout/default_layout.dart';
import 'package:flutter_riverpod_playground/model/shopping_item_model.dart';
import 'package:flutter_riverpod_playground/riverpod/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 등록한 provider watch
    final state = ref.watch(shoppingListProvier);
    return DefaultLayout(
      title: 'StateNotifierProvider',
      body: ListView(
        children: state
            .map((e) => CheckboxListTile(
                  title: Text(e.name),
                  value: e.hasBought,
                  onChanged: (bool? value) {
                    ref
                        .read(shoppingListProvier.notifier)
                        .toggleHasBought(e.name);
                  },
                ))
            .toList(),
      ),
    );
  }
}
