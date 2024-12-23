// Generated code. Do not modify.

import 'package:divkit/src/schema/div_size_unit.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

/// Stroke.
class DivStroke extends Resolvable with EquatableMixin {
  const DivStroke({
    required this.color,
    this.unit = const ValueExpression(DivSizeUnit.dp),
    this.width = const ValueExpression(1),
  });

  /// Stroke color.
  final Expression<Color> color;
  // default value: DivSizeUnit.dp
  final Expression<DivSizeUnit> unit;

  /// Stroke width.
  // constraint: number >= 0; default value: 1
  final Expression<double> width;

  @override
  List<Object?> get props => [
        color,
        unit,
        width,
      ];

  DivStroke copyWith({
    Expression<Color>? color,
    Expression<DivSizeUnit>? unit,
    Expression<double>? width,
  }) =>
      DivStroke(
        color: color ?? this.color,
        unit: unit ?? this.unit,
        width: width ?? this.width,
      );

  static DivStroke? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivStroke(
        color: safeParseColorExpr(
          json['color'],
        )!,
        unit: safeParseStrEnumExpr(
          json['unit'],
          parse: DivSizeUnit.fromJson,
          fallback: DivSizeUnit.dp,
        )!,
        width: safeParseDoubleExpr(
          json['width'],
          fallback: 1,
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  DivStroke resolve(DivVariableContext context) {
    color.resolve(context);
    unit.resolve(context);
    width.resolve(context);
    return this;
  }
}
