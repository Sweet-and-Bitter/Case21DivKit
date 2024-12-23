// Generated code. Do not modify.

import 'package:divkit/src/schema/div_accessibility.dart';
import 'package:divkit/src/schema/div_action.dart';
import 'package:divkit/src/schema/div_alignment_horizontal.dart';
import 'package:divkit/src/schema/div_alignment_vertical.dart';
import 'package:divkit/src/schema/div_animator.dart';
import 'package:divkit/src/schema/div_appearance_transition.dart';
import 'package:divkit/src/schema/div_background.dart';
import 'package:divkit/src/schema/div_base.dart';
import 'package:divkit/src/schema/div_border.dart';
import 'package:divkit/src/schema/div_change_transition.dart';
import 'package:divkit/src/schema/div_disappear_action.dart';
import 'package:divkit/src/schema/div_edge_insets.dart';
import 'package:divkit/src/schema/div_extension.dart';
import 'package:divkit/src/schema/div_fixed_size.dart';
import 'package:divkit/src/schema/div_focus.dart';
import 'package:divkit/src/schema/div_function.dart';
import 'package:divkit/src/schema/div_indicator_item_placement.dart';
import 'package:divkit/src/schema/div_layout_provider.dart';
import 'package:divkit/src/schema/div_match_parent_size.dart';
import 'package:divkit/src/schema/div_rounded_rectangle_shape.dart';
import 'package:divkit/src/schema/div_shape.dart';
import 'package:divkit/src/schema/div_size.dart';
import 'package:divkit/src/schema/div_tooltip.dart';
import 'package:divkit/src/schema/div_transform.dart';
import 'package:divkit/src/schema/div_transition_trigger.dart';
import 'package:divkit/src/schema/div_trigger.dart';
import 'package:divkit/src/schema/div_variable.dart';
import 'package:divkit/src/schema/div_visibility.dart';
import 'package:divkit/src/schema/div_visibility_action.dart';
import 'package:divkit/src/schema/div_wrap_content_size.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

/// Progress indicator for [pager](div-pager.md).
class DivIndicator extends Resolvable with EquatableMixin implements DivBase {
  const DivIndicator({
    this.accessibility = const DivAccessibility(),
    this.activeItemColor = const ValueExpression(Color(0xFFFFDC60)),
    this.activeItemSize = const ValueExpression(1.3),
    this.activeShape,
    this.alignmentHorizontal,
    this.alignmentVertical,
    this.alpha = const ValueExpression(1.0),
    this.animation = const ValueExpression(DivIndicatorAnimation.scale),
    this.animators,
    this.background,
    this.border = const DivBorder(),
    this.columnSpan,
    this.disappearActions,
    this.extensions,
    this.focus,
    this.functions,
    this.height = const DivSize.divWrapContentSize(
      DivWrapContentSize(),
    ),
    this.id,
    this.inactiveItemColor = const ValueExpression(Color(0x33919CB5)),
    this.inactiveMinimumShape,
    this.inactiveShape,
    this.itemsPlacement,
    this.layoutProvider,
    this.margins = const DivEdgeInsets(),
    this.minimumItemSize = const ValueExpression(0.5),
    this.paddings = const DivEdgeInsets(),
    this.pagerId,
    this.reuseId,
    this.rowSpan,
    this.selectedActions,
    this.shape = const DivShape.divRoundedRectangleShape(
      DivRoundedRectangleShape(),
    ),
    this.spaceBetweenCenters = const DivFixedSize(
      value: ValueExpression(
        15,
      ),
    ),
    this.tooltips,
    this.transform = const DivTransform(),
    this.transitionChange,
    this.transitionIn,
    this.transitionOut,
    this.transitionTriggers,
    this.variableTriggers,
    this.variables,
    this.visibility = const ValueExpression(DivVisibility.visible),
    this.visibilityAction,
    this.visibilityActions,
    this.width = const DivSize.divMatchParentSize(
      DivMatchParentSize(),
    ),
  });

  static const type = "indicator";

  /// Accessibility settings.
  @override
  final DivAccessibility accessibility;

  /// Active indicator color.
  // default value: const Color(0xFFFFDC60)
  final Expression<Color> activeItemColor;

  /// A size multiplier for an active indicator.
  // constraint: number > 0; default value: 1.3
  final Expression<double> activeItemSize;

  /// Active indicator shape.
  final DivRoundedRectangleShape? activeShape;

  /// Horizontal alignment of an element inside the parent element.
  @override
  final Expression<DivAlignmentHorizontal>? alignmentHorizontal;

  /// Vertical alignment of an element inside the parent element.
  @override
  final Expression<DivAlignmentVertical>? alignmentVertical;

  /// Sets transparency of the entire element: `0` — completely transparent, `1` — opaque.
  // constraint: number >= 0.0 && number <= 1.0; default value: 1.0
  @override
  final Expression<double> alpha;

  /// Animation of switching between indicators.
  // default value: DivIndicatorAnimation.scale
  final Expression<DivIndicatorAnimation> animation;

  /// Declaration of animators that change variable values over time.
  @override
  final List<DivAnimator>? animators;

  /// Element background. It can contain multiple layers.
  @override
  final List<DivBackground>? background;

  /// Element stroke.
  @override
  final DivBorder border;

  /// Merges cells in a column of the [grid](div-grid.md) element.
  // constraint: number >= 0
  @override
  final Expression<int>? columnSpan;

  /// Actions when an element disappears from the screen.
  @override
  final List<DivDisappearAction>? disappearActions;

  /// Extensions for additional processing of an element. The list of extensions is given in  [DivExtension](https://divkit.tech/docs/en/concepts/extensions).
  @override
  final List<DivExtension>? extensions;

  /// Parameters when focusing on an element or losing focus.
  @override
  final DivFocus? focus;

  /// User functions.
  @override
  final List<DivFunction>? functions;

  /// Element height. For Android: if there is text in this or in a child element, specify height in `sp` to scale the element together with the text. To learn more about units of size measurement, see [Layout inside the card](https://divkit.tech/docs/en/concepts/layout).
  // default value: const DivSize.divWrapContentSize(DivWrapContentSize(),)
  @override
  final DivSize height;

  /// Element ID. It must be unique within the root element. It is used as `accessibilityIdentifier` on iOS.
  @override
  final String? id;

  /// Indicator color.
  // default value: const Color(0x33919CB5)
  final Expression<Color> inactiveItemColor;

  /// Inactive indicator shape, minimum size. Used when all the indicators don't fit on the screen.
  final DivRoundedRectangleShape? inactiveMinimumShape;

  /// Indicator shape.
  final DivRoundedRectangleShape? inactiveShape;

  /// Indicator items placement mode:
  /// • Default: Indicators' width is fixed and defined by the `shape` parameters.
  /// • Stretch: Indicators are expanded to fill the entire width.
  final DivIndicatorItemPlacement? itemsPlacement;

  /// Provides data on the actual size of the element.
  @override
  final DivLayoutProvider? layoutProvider;

  /// External margins from the element stroke.
  @override
  final DivEdgeInsets margins;

  /// A size multiplier for a minimal indicator. It is used when the required number of indicators don't fit on the screen.
  // constraint: number > 0; default value: 0.5
  final Expression<double> minimumItemSize;

  /// Internal margins from the element stroke.
  @override
  final DivEdgeInsets paddings;

  /// ID of the pager that is a data source for an indicator.
  final String? pagerId;

  /// ID for the div object structure. Used to optimize block reuse. See [block reuse](https://divkit.tech/docs/en/concepts/reuse/reuse.md).
  @override
  final Expression<String>? reuseId;

  /// Merges cells in a string of the [grid](div-grid.md) element.
  // constraint: number >= 0
  @override
  final Expression<int>? rowSpan;

  /// List of [actions](div-action.md) to be executed when selecting an element in [pager](div-pager.md).
  @override
  final List<DivAction>? selectedActions;

  /// Indicator shape.
  // default value: const DivShape.divRoundedRectangleShape(DivRoundedRectangleShape(),)
  final DivShape shape;

  /// Spacing between indicator centers.
  // default value: const DivFixedSize(value: ValueExpression(15,),)
  final DivFixedSize spaceBetweenCenters;

  /// Tooltips linked to an element. A tooltip can be shown by `div-action://show_tooltip?id=`, hidden by `div-action://hide_tooltip?id=` where `id` — tooltip id.
  @override
  final List<DivTooltip>? tooltips;

  /// Applies the passed transformation to the element. Content that doesn't fit into the original view area is cut off.
  @override
  final DivTransform transform;

  /// Change animation. It is played when the position or size of an element changes in the new layout.
  @override
  final DivChangeTransition? transitionChange;

  /// Appearance animation. It is played when an element with a new ID appears. To learn more about the concept of transitions, see [Animated transitions](https://divkit.tech/docs/en/concepts/interaction#animation/transition-animation).
  @override
  final DivAppearanceTransition? transitionIn;

  /// Disappearance animation. It is played when an element disappears in the new layout.
  @override
  final DivAppearanceTransition? transitionOut;

  /// Animation starting triggers. Default value: `[state_change, visibility_change]`.
  // at least 1 elements
  @override
  final List<DivTransitionTrigger>? transitionTriggers;

  /// Triggers for changing variables within an element.
  @override
  final List<DivTrigger>? variableTriggers;

  /// Declaration of variables that can be used within an element. Variables declared in this array can only be used within the element and its child elements.
  @override
  final List<DivVariable>? variables;

  /// Element visibility.
  // default value: DivVisibility.visible
  @override
  final Expression<DivVisibility> visibility;

  /// Tracking visibility of a single element. Not used if the `visibility_actions` parameter is set.
  @override
  final DivVisibilityAction? visibilityAction;

  /// Actions when an element appears on the screen.
  @override
  final List<DivVisibilityAction>? visibilityActions;

  /// Element width.
  // default value: const DivSize.divMatchParentSize(DivMatchParentSize(),)
  @override
  final DivSize width;

  @override
  List<Object?> get props => [
        accessibility,
        activeItemColor,
        activeItemSize,
        activeShape,
        alignmentHorizontal,
        alignmentVertical,
        alpha,
        animation,
        animators,
        background,
        border,
        columnSpan,
        disappearActions,
        extensions,
        focus,
        functions,
        height,
        id,
        inactiveItemColor,
        inactiveMinimumShape,
        inactiveShape,
        itemsPlacement,
        layoutProvider,
        margins,
        minimumItemSize,
        paddings,
        pagerId,
        reuseId,
        rowSpan,
        selectedActions,
        shape,
        spaceBetweenCenters,
        tooltips,
        transform,
        transitionChange,
        transitionIn,
        transitionOut,
        transitionTriggers,
        variableTriggers,
        variables,
        visibility,
        visibilityAction,
        visibilityActions,
        width,
      ];

  DivIndicator copyWith({
    DivAccessibility? accessibility,
    Expression<Color>? activeItemColor,
    Expression<double>? activeItemSize,
    DivRoundedRectangleShape? Function()? activeShape,
    Expression<DivAlignmentHorizontal>? Function()? alignmentHorizontal,
    Expression<DivAlignmentVertical>? Function()? alignmentVertical,
    Expression<double>? alpha,
    Expression<DivIndicatorAnimation>? animation,
    List<DivAnimator>? Function()? animators,
    List<DivBackground>? Function()? background,
    DivBorder? border,
    Expression<int>? Function()? columnSpan,
    List<DivDisappearAction>? Function()? disappearActions,
    List<DivExtension>? Function()? extensions,
    DivFocus? Function()? focus,
    List<DivFunction>? Function()? functions,
    DivSize? height,
    String? Function()? id,
    Expression<Color>? inactiveItemColor,
    DivRoundedRectangleShape? Function()? inactiveMinimumShape,
    DivRoundedRectangleShape? Function()? inactiveShape,
    DivIndicatorItemPlacement? Function()? itemsPlacement,
    DivLayoutProvider? Function()? layoutProvider,
    DivEdgeInsets? margins,
    Expression<double>? minimumItemSize,
    DivEdgeInsets? paddings,
    String? Function()? pagerId,
    Expression<String>? Function()? reuseId,
    Expression<int>? Function()? rowSpan,
    List<DivAction>? Function()? selectedActions,
    DivShape? shape,
    DivFixedSize? spaceBetweenCenters,
    List<DivTooltip>? Function()? tooltips,
    DivTransform? transform,
    DivChangeTransition? Function()? transitionChange,
    DivAppearanceTransition? Function()? transitionIn,
    DivAppearanceTransition? Function()? transitionOut,
    List<DivTransitionTrigger>? Function()? transitionTriggers,
    List<DivTrigger>? Function()? variableTriggers,
    List<DivVariable>? Function()? variables,
    Expression<DivVisibility>? visibility,
    DivVisibilityAction? Function()? visibilityAction,
    List<DivVisibilityAction>? Function()? visibilityActions,
    DivSize? width,
  }) =>
      DivIndicator(
        accessibility: accessibility ?? this.accessibility,
        activeItemColor: activeItemColor ?? this.activeItemColor,
        activeItemSize: activeItemSize ?? this.activeItemSize,
        activeShape:
            activeShape != null ? activeShape.call() : this.activeShape,
        alignmentHorizontal: alignmentHorizontal != null
            ? alignmentHorizontal.call()
            : this.alignmentHorizontal,
        alignmentVertical: alignmentVertical != null
            ? alignmentVertical.call()
            : this.alignmentVertical,
        alpha: alpha ?? this.alpha,
        animation: animation ?? this.animation,
        animators: animators != null ? animators.call() : this.animators,
        background: background != null ? background.call() : this.background,
        border: border ?? this.border,
        columnSpan: columnSpan != null ? columnSpan.call() : this.columnSpan,
        disappearActions: disappearActions != null
            ? disappearActions.call()
            : this.disappearActions,
        extensions: extensions != null ? extensions.call() : this.extensions,
        focus: focus != null ? focus.call() : this.focus,
        functions: functions != null ? functions.call() : this.functions,
        height: height ?? this.height,
        id: id != null ? id.call() : this.id,
        inactiveItemColor: inactiveItemColor ?? this.inactiveItemColor,
        inactiveMinimumShape: inactiveMinimumShape != null
            ? inactiveMinimumShape.call()
            : this.inactiveMinimumShape,
        inactiveShape:
            inactiveShape != null ? inactiveShape.call() : this.inactiveShape,
        itemsPlacement: itemsPlacement != null
            ? itemsPlacement.call()
            : this.itemsPlacement,
        layoutProvider: layoutProvider != null
            ? layoutProvider.call()
            : this.layoutProvider,
        margins: margins ?? this.margins,
        minimumItemSize: minimumItemSize ?? this.minimumItemSize,
        paddings: paddings ?? this.paddings,
        pagerId: pagerId != null ? pagerId.call() : this.pagerId,
        reuseId: reuseId != null ? reuseId.call() : this.reuseId,
        rowSpan: rowSpan != null ? rowSpan.call() : this.rowSpan,
        selectedActions: selectedActions != null
            ? selectedActions.call()
            : this.selectedActions,
        shape: shape ?? this.shape,
        spaceBetweenCenters: spaceBetweenCenters ?? this.spaceBetweenCenters,
        tooltips: tooltips != null ? tooltips.call() : this.tooltips,
        transform: transform ?? this.transform,
        transitionChange: transitionChange != null
            ? transitionChange.call()
            : this.transitionChange,
        transitionIn:
            transitionIn != null ? transitionIn.call() : this.transitionIn,
        transitionOut:
            transitionOut != null ? transitionOut.call() : this.transitionOut,
        transitionTriggers: transitionTriggers != null
            ? transitionTriggers.call()
            : this.transitionTriggers,
        variableTriggers: variableTriggers != null
            ? variableTriggers.call()
            : this.variableTriggers,
        variables: variables != null ? variables.call() : this.variables,
        visibility: visibility ?? this.visibility,
        visibilityAction: visibilityAction != null
            ? visibilityAction.call()
            : this.visibilityAction,
        visibilityActions: visibilityActions != null
            ? visibilityActions.call()
            : this.visibilityActions,
        width: width ?? this.width,
      );

  static DivIndicator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivIndicator(
        accessibility: safeParseObj(
          DivAccessibility.fromJson(json['accessibility']),
          fallback: const DivAccessibility(),
        )!,
        activeItemColor: safeParseColorExpr(
          json['active_item_color'],
          fallback: const Color(0xFFFFDC60),
        )!,
        activeItemSize: safeParseDoubleExpr(
          json['active_item_size'],
          fallback: 1.3,
        )!,
        activeShape: safeParseObj(
          DivRoundedRectangleShape.fromJson(json['active_shape']),
        ),
        alignmentHorizontal: safeParseStrEnumExpr(
          json['alignment_horizontal'],
          parse: DivAlignmentHorizontal.fromJson,
        ),
        alignmentVertical: safeParseStrEnumExpr(
          json['alignment_vertical'],
          parse: DivAlignmentVertical.fromJson,
        ),
        alpha: safeParseDoubleExpr(
          json['alpha'],
          fallback: 1.0,
        )!,
        animation: safeParseStrEnumExpr(
          json['animation'],
          parse: DivIndicatorAnimation.fromJson,
          fallback: DivIndicatorAnimation.scale,
        )!,
        animators: safeParseObj(
          safeListMap(
            json['animators'],
            (v) => safeParseObj(
              DivAnimator.fromJson(v),
            )!,
          ),
        ),
        background: safeParseObj(
          safeListMap(
            json['background'],
            (v) => safeParseObj(
              DivBackground.fromJson(v),
            )!,
          ),
        ),
        border: safeParseObj(
          DivBorder.fromJson(json['border']),
          fallback: const DivBorder(),
        )!,
        columnSpan: safeParseIntExpr(
          json['column_span'],
        ),
        disappearActions: safeParseObj(
          safeListMap(
            json['disappear_actions'],
            (v) => safeParseObj(
              DivDisappearAction.fromJson(v),
            )!,
          ),
        ),
        extensions: safeParseObj(
          safeListMap(
            json['extensions'],
            (v) => safeParseObj(
              DivExtension.fromJson(v),
            )!,
          ),
        ),
        focus: safeParseObj(
          DivFocus.fromJson(json['focus']),
        ),
        functions: safeParseObj(
          safeListMap(
            json['functions'],
            (v) => safeParseObj(
              DivFunction.fromJson(v),
            )!,
          ),
        ),
        height: safeParseObj(
          DivSize.fromJson(json['height']),
          fallback: const DivSize.divWrapContentSize(
            DivWrapContentSize(),
          ),
        )!,
        id: safeParseStr(
          json['id']?.toString(),
        ),
        inactiveItemColor: safeParseColorExpr(
          json['inactive_item_color'],
          fallback: const Color(0x33919CB5),
        )!,
        inactiveMinimumShape: safeParseObj(
          DivRoundedRectangleShape.fromJson(json['inactive_minimum_shape']),
        ),
        inactiveShape: safeParseObj(
          DivRoundedRectangleShape.fromJson(json['inactive_shape']),
        ),
        itemsPlacement: safeParseObj(
          DivIndicatorItemPlacement.fromJson(json['items_placement']),
        ),
        layoutProvider: safeParseObj(
          DivLayoutProvider.fromJson(json['layout_provider']),
        ),
        margins: safeParseObj(
          DivEdgeInsets.fromJson(json['margins']),
          fallback: const DivEdgeInsets(),
        )!,
        minimumItemSize: safeParseDoubleExpr(
          json['minimum_item_size'],
          fallback: 0.5,
        )!,
        paddings: safeParseObj(
          DivEdgeInsets.fromJson(json['paddings']),
          fallback: const DivEdgeInsets(),
        )!,
        pagerId: safeParseStr(
          json['pager_id']?.toString(),
        ),
        reuseId: safeParseStrExpr(
          json['reuse_id']?.toString(),
        ),
        rowSpan: safeParseIntExpr(
          json['row_span'],
        ),
        selectedActions: safeParseObj(
          safeListMap(
            json['selected_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        shape: safeParseObj(
          DivShape.fromJson(json['shape']),
          fallback: const DivShape.divRoundedRectangleShape(
            DivRoundedRectangleShape(),
          ),
        )!,
        spaceBetweenCenters: safeParseObj(
          DivFixedSize.fromJson(json['space_between_centers']),
          fallback: const DivFixedSize(
            value: ValueExpression(
              15,
            ),
          ),
        )!,
        tooltips: safeParseObj(
          safeListMap(
            json['tooltips'],
            (v) => safeParseObj(
              DivTooltip.fromJson(v),
            )!,
          ),
        ),
        transform: safeParseObj(
          DivTransform.fromJson(json['transform']),
          fallback: const DivTransform(),
        )!,
        transitionChange: safeParseObj(
          DivChangeTransition.fromJson(json['transition_change']),
        ),
        transitionIn: safeParseObj(
          DivAppearanceTransition.fromJson(json['transition_in']),
        ),
        transitionOut: safeParseObj(
          DivAppearanceTransition.fromJson(json['transition_out']),
        ),
        transitionTriggers: safeParseObj(
          safeListMap(
            json['transition_triggers'],
            (v) => safeParseStrEnum(
              v,
              parse: DivTransitionTrigger.fromJson,
            )!,
          ),
        ),
        variableTriggers: safeParseObj(
          safeListMap(
            json['variable_triggers'],
            (v) => safeParseObj(
              DivTrigger.fromJson(v),
            )!,
          ),
        ),
        variables: safeParseObj(
          safeListMap(
            json['variables'],
            (v) => safeParseObj(
              DivVariable.fromJson(v),
            )!,
          ),
        ),
        visibility: safeParseStrEnumExpr(
          json['visibility'],
          parse: DivVisibility.fromJson,
          fallback: DivVisibility.visible,
        )!,
        visibilityAction: safeParseObj(
          DivVisibilityAction.fromJson(json['visibility_action']),
        ),
        visibilityActions: safeParseObj(
          safeListMap(
            json['visibility_actions'],
            (v) => safeParseObj(
              DivVisibilityAction.fromJson(v),
            )!,
          ),
        ),
        width: safeParseObj(
          DivSize.fromJson(json['width']),
          fallback: const DivSize.divMatchParentSize(
            DivMatchParentSize(),
          ),
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  DivIndicator resolve(DivVariableContext context) {
    accessibility.resolve(context);
    activeItemColor.resolve(context);
    activeItemSize.resolve(context);
    activeShape?.resolve(context);
    alignmentHorizontal?.resolve(context);
    alignmentVertical?.resolve(context);
    alpha.resolve(context);
    animation.resolve(context);
    safeListResolve(animators, (v) => v.resolve(context));
    safeListResolve(background, (v) => v.resolve(context));
    border.resolve(context);
    columnSpan?.resolve(context);
    safeListResolve(disappearActions, (v) => v.resolve(context));
    safeListResolve(extensions, (v) => v.resolve(context));
    focus?.resolve(context);
    safeListResolve(functions, (v) => v.resolve(context));
    height.resolve(context);
    inactiveItemColor.resolve(context);
    inactiveMinimumShape?.resolve(context);
    inactiveShape?.resolve(context);
    itemsPlacement?.resolve(context);
    layoutProvider?.resolve(context);
    margins.resolve(context);
    minimumItemSize.resolve(context);
    paddings.resolve(context);
    reuseId?.resolve(context);
    rowSpan?.resolve(context);
    safeListResolve(selectedActions, (v) => v.resolve(context));
    shape.resolve(context);
    spaceBetweenCenters.resolve(context);
    safeListResolve(tooltips, (v) => v.resolve(context));
    transform.resolve(context);
    transitionChange?.resolve(context);
    transitionIn?.resolve(context);
    transitionOut?.resolve(context);
    safeListResolve(transitionTriggers, (v) => v.resolve(context));
    safeListResolve(variableTriggers, (v) => v.resolve(context));
    safeListResolve(variables, (v) => v.resolve(context));
    visibility.resolve(context);
    visibilityAction?.resolve(context);
    safeListResolve(visibilityActions, (v) => v.resolve(context));
    width.resolve(context);
    return this;
  }
}

enum DivIndicatorAnimation implements Resolvable {
  scale('scale'),
  worm('worm'),
  slider('slider');

  final String value;

  const DivIndicatorAnimation(this.value);
  bool get isScale => this == scale;

  bool get isWorm => this == worm;

  bool get isSlider => this == slider;

  T map<T>({
    required T Function() scale,
    required T Function() worm,
    required T Function() slider,
  }) {
    switch (this) {
      case DivIndicatorAnimation.scale:
        return scale();
      case DivIndicatorAnimation.worm:
        return worm();
      case DivIndicatorAnimation.slider:
        return slider();
    }
  }

  T maybeMap<T>({
    T Function()? scale,
    T Function()? worm,
    T Function()? slider,
    required T Function() orElse,
  }) {
    switch (this) {
      case DivIndicatorAnimation.scale:
        return scale?.call() ?? orElse();
      case DivIndicatorAnimation.worm:
        return worm?.call() ?? orElse();
      case DivIndicatorAnimation.slider:
        return slider?.call() ?? orElse();
    }
  }

  static DivIndicatorAnimation? fromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      switch (json) {
        case 'scale':
          return DivIndicatorAnimation.scale;
        case 'worm':
          return DivIndicatorAnimation.worm;
        case 'slider':
          return DivIndicatorAnimation.slider;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  DivIndicatorAnimation resolve(DivVariableContext context) => this;
}
