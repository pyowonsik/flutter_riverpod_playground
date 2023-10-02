class WorkoutModel {
  final String name;
  final int weight;
  final bool isSuccess;
  final String target;

  WorkoutModel({
    required this.name,
    required this.weight,
    required this.isSuccess,
    required this.target,
  });

  WorkoutModel copyWith({
    String? name,
    int? weight,
    bool? isSuccess,
    String? target,
  }) {
    return WorkoutModel(
        name: name ?? this.name,
        weight: weight ?? this.weight,
        isSuccess: isSuccess ?? this.isSuccess,
        target: target ?? this.target);
  }
}
