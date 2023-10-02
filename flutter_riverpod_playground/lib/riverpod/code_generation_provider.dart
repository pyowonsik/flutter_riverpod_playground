import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// 1) 어떤 Provider를 사용할 고민 할 필요없도록
// Provider,FutureProvider,StreamProvider
// StateNotifierProvider

final _testProvider = Provider<String>((ref) => 'Hello Code Generation');
final originalStateProvider = Provider<String>((ref) => 'riverpod v1');
final originalFutureProvider = FutureProvider<String>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Future v1';
});

@riverpod
String newState(NewStateRef ref) {
  return 'riverpod v2';
}

@riverpod
Future<String> newFuture(NewFutureRef ref) async {
  await Future.delayed(Duration(seconds: 3));
  return 'Future v2';
}

@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(Duration(seconds: 3));
  return 10;
}

// autoDispose가 걸리지 않도록
@Riverpod(keepAlive: true)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(Duration(seconds: 3));
  return 10;
}

// 2) Parameter -> Family 파라미터를 일반 함수처럼 사용할수 있도록
class Parameter {
  final int number1;
  final int number2;

  Parameter({
    required this.number1,
    required this.number2,
  });
}

final originalFamilyProdiver = Provider.family<int, Parameter>(
    (ref, parameter) => parameter.number1 + parameter.number2);

@riverpod
int newFamily(NewFamilyRef ref, {required int number1, required int number2}) {
  return number1 + number2;
}

final originalStateNotifierProvider =
    StateNotifierProvider<OriginalStateNotifier, int>(
        (ref) => OriginalStateNotifier());

class OriginalStateNotifier extends StateNotifier<int> {
  OriginalStateNotifier() : super(0);

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}

// StateNotifier를 provider로 만드는 법
@riverpod
class NewStateNotifier extends _$NewStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}
