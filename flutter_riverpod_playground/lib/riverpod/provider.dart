import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/shopping_item_model.dart';
import 'package:flutter_riverpod_playground/riverpod/state_notifier_provider.dart';

final fillteredShoppingListProvider = Provider<List<ShoppingItemModel>>((ref) {
  final shoppingListState = ref.watch(shoppingListProvier);
  final fillterState = ref.watch(filterProvider);

  if (fillterState == FilterState.all) {
    return shoppingListState;
  }

  return shoppingListState
      .where((element) => fillterState == FilterState.spicy
          ? element.isSpicy
          : !element.isSpicy)
      .toList();
});

enum FilterState { notSpicy, spicy, all }

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);
