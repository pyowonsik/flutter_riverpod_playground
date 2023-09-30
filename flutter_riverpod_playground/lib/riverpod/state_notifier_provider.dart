import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/shopping_item_model.dart';

// Provider 생성 : 위젯에서 사용을 하기위해
final shoppingListProvier =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
        (ref) => ShoppingListNotifier());

// Notifier 생성
class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  // 초기값 , 관리할 state 정의
  ShoppingListNotifier()
      : super(
          [
            ShoppingItemModel(
                name: '김치', quantity: 3, hasBought: false, isSpicy: true),
            ShoppingItemModel(
                name: '라면', quantity: 5, hasBought: false, isSpicy: true),
            ShoppingItemModel(
                name: '삼겹살', quantity: 10, hasBought: false, isSpicy: false),
            ShoppingItemModel(
                name: '수박', quantity: 2, hasBought: false, isSpicy: false),
            ShoppingItemModel(
                name: '카스테라', quantity: 5, hasBought: false, isSpicy: false),
          ],
        );

  void toggleHasBought(String name) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy)
            : e)
        .toList();

    // .map 함수 연습
  }
}
