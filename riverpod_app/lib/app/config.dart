import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    @Default(
      'https://raw.githubusercontent.com/peter-trost/flutter-testing-concepts/refs/heads/main/',
    )
    String baseUrl,
  }) = _AppConfig;
}

@riverpod
AppConfig appConfig(Ref ref) {
  return const AppConfig();
}
