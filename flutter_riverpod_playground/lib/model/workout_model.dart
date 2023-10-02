class WorkoutModel {
  final String name;
  final int weight;
  final bool isSuccess;

  WorkoutModel({
    required this.name,
    required this.weight,
    required this.isSuccess,
  });

  WorkoutModel copyWith({
    String? name,
    int? weight,
    bool? isSuccess,
  }) {
    return WorkoutModel(
        name: name ?? this.name,
        weight: weight ?? this.weight,
        isSuccess: isSuccess ?? this.isSuccess);
  }
}
