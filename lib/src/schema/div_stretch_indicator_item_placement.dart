// Generated code. Do not modify.

import 'package:divkit/src/schema/div_fixed_size.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

/// Element size adjusts to a parent element.
class DivStretchIndicatorItemPlacement extends Resolvable with EquatableMixin {
  const DivStretchIndicatorItemPlacement({
    this.itemSpacing = const DivFixedSize(
      value: ValueExpression(
        5,
      ),
    ),
    this.maxVisibleItems = const ValueExpression(10),
  });

  static const type = "stretch";

  /// Spacing between indicator centers.
  // default value: const DivFixedSize(value: ValueExpression(5,),)
  final DivFixedSize itemSpacing;

  /// Maximum number of visible indicators.
  // constraint: number > 0; default value: 10
  final Expression<int> maxVisibleItems;

  @override
  List<Object?> get props => [
        itemSpacing,
        maxVisibleItems,
      ];

  DivStretchIndicatorItemPlacement copyWith({
    DivFixedSize? itemSpacing,
    Expression<int>? maxVisibleItems,
  }) =>
      DivStretchIndicatorItemPlacement(
        itemSpacing: itemSpacing ?? this.itemSpacing,
        maxVisibleItems: maxVisibleItems ?? this.maxVisibleItems,
      );

  static DivStretchIndicatorItemPlacement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivStretchIndicatorItemPlacement(
        itemSpacing: safeParseObj(
          DivFixedSize.fromJson(json['item_spacing']),
          fallback: const DivFixedSize(
            value: ValueExpression(
              5,
            ),
          ),
        )!,
        maxVisibleItems: safeParseIntExpr(
          json['max_visible_items'],
          fallback: 10,
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  DivStretchIndicatorItemPlacement resolve(DivVariableContext context) {
    itemSpacing.resolve(context);
    maxVisibleItems.resolve(context);
    return this;
  }
}
