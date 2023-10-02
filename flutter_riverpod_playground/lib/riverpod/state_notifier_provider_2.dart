import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/workout_model.dart';

final workoutListProvider =
    StateNotifierProvider<WorkOutListNotfier, List<WorkoutModel>>(
        (ref) => WorkOutListNotfier());

class WorkOutListNotfier extends StateNotifier<List<WorkoutModel>> {
  WorkOutListNotfier()
      : super(
          [
            WorkoutModel(
                name: '벤치프레스', weight: 105, isSuccess: true, target: '상체'),
            WorkoutModel(
                name: '데드리프트', weight: 200, isSuccess: true, target: '하체'),
            WorkoutModel(
                name: '스쿼트', weight: 170, isSuccess: false, target: '하체'),
            WorkoutModel(
                name: '바벨로우', weight: 100, isSuccess: true, target: '상체'),
            WorkoutModel(
                name: '인클라인벤치프레스', weight: 90, isSuccess: false, target: '상체'),
          ],
        );

  void toggleIsSuccess(String name) {
    state = state
        .map((e) => e.name == name
            ? WorkoutModel(
                name: e.name,
                weight: e.weight,
                isSuccess: !e.isSuccess,
                target: e.target)
            : e)
        .toList();
  }
}
