import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/model/workout_model.dart';

final workoutProvider = StateNotifierProvider<WorkoutNotifier, WorkoutModel>(
    (ref) => WorkoutNotifier());

class WorkoutNotifier extends StateNotifier<WorkoutModel> {
  WorkoutNotifier()
      : super(
          WorkoutModel(name: '벤치프레스', weight: 110, isSuccess: false),
        );

  upWeigth() {
    state = state.copyWith(weight: state.weight + 5);
  }

  toggleIsSuccess() {
    state = state.copyWith(isSuccess: !state.isSuccess);
  }
}
