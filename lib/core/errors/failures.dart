import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
sealed class Failures with _$Failures {
  const factory Failures.server({required String msg}) = ServerFailure;
}
