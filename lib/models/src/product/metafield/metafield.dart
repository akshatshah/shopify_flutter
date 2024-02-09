import 'package:freezed_annotation/freezed_annotation.dart';

part 'metafield.freezed.dart';
part 'metafield.g.dart';

@freezed
class Metafield with _$Metafield {
  const Metafield._();

  factory Metafield({
    required String id,
    String? namespace,
    String? key,
    required int value,
    String? type,
    @Default('') String description,
  }) = _Metafield;

  static Metafield fromGraphJson(Map<String, dynamic> json) {
    return Metafield(
        id: (json['node'] ?? const {})['id'],
        key: (json['node'] ?? const {})['key'],
        namespace: (json['node'] ?? const {})['namespace'],
        type: (json['node'] ?? const {})['type'],
        value: (json['node'] ?? const {})['value'],
        description: (json['node'] ?? const {})['description']);
  }

  factory Metafield.fromJson(Map<String, dynamic> json) =>
      _$MetafieldFromJson(json);
}
