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
    required String value,
    String? type,
    @Default('') String description,
  }) = _Metafield;

  static Metafield fromGraphJson(Map<String, dynamic> json) {
    return Metafield(
        id: json['id'],
        key: json['key'],
        namespace: json['namespace'],
        type: json['type'],
        value: json['value'],
        description: json['description'] ?? '');
  }

  factory Metafield.fromJson(Map<String, dynamic> json) =>
      _$MetafieldFromJson(json);
}
