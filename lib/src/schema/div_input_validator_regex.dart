// Generated code. Do not modify.

import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

/// Regex validator.
class DivInputValidatorRegex extends Resolvable with EquatableMixin {
  const DivInputValidatorRegex({
    this.allowEmpty = const ValueExpression(false),
    required this.labelId,
    required this.pattern,
    required this.variable,
  });

  static const type = "regex";

  /// Determines whether the empty field value is valid.
  // default value: false
  final Expression<bool> allowEmpty;

  /// ID of the text element containing the error message. The message will also be used for providing access.
  final Expression<String> labelId;

  /// A regular expression (pattern) that the field value must match.
  final Expression<String> pattern;

  /// The name of the variable that stores the calculation results.
  final String variable;

  @override
  List<Object?> get props => [
        allowEmpty,
        labelId,
        pattern,
        variable,
      ];

  DivInputValidatorRegex copyWith({
    Expression<bool>? allowEmpty,
    Expression<String>? labelId,
    Expression<String>? pattern,
    String? variable,
  }) =>
      DivInputValidatorRegex(
        allowEmpty: allowEmpty ?? this.allowEmpty,
        labelId: labelId ?? this.labelId,
        pattern: pattern ?? this.pattern,
        variable: variable ?? this.variable,
      );

  static DivInputValidatorRegex? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivInputValidatorRegex(
        allowEmpty: safeParseBoolExpr(
          json['allow_empty'],
          fallback: false,
        )!,
        labelId: safeParseStrExpr(
          json['label_id']?.toString(),
        )!,
        pattern: safeParseStrExpr(
          json['pattern']?.toString(),
        )!,
        variable: safeParseStr(
          json['variable']?.toString(),
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  DivInputValidatorRegex resolve(DivVariableContext context) {
    allowEmpty.resolve(context);
    labelId.resolve(context);
    pattern.resolve(context);
    return this;
  }
}
