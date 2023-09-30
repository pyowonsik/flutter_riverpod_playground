import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/screen/family_modifier_screen.dart';

final familyModifierProvider =
    FutureProvider.family<List<int>, int>((ref, data) async {
  await Future.delayed(
    Duration(seconds: 2),
  );

  return List.generate(5, (index) => index * data);
});
