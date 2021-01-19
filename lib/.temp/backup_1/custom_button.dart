import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_theme.dart';

class MixButton extends MaterialButton {
  final bool isRaised;
  final bool loading;
  final double loadingSize;

  const MixButton({
    Key key,
    @required this.isRaised,
    @required this.loading,
    @required this.loadingSize,
    @required VoidCallback onPressed,
    VoidCallback onLongPress,
    ValueChanged<bool> onHighlightChanged,
    MouseCursor mouseCursor,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    double elevation,
    double focusElevation,
    double hoverElevation,
    double highlightElevation,
    double disabledElevation,
    Duration animationDuration,
    MaterialTapTargetSize materialTapTargetSize,
    @required Widget child,
    double height,
    double minWidth,
  })  : assert(isRaised != null),
        assert(loading != null),
        assert(loadingSize != null),
        assert(clipBehavior != null),
        assert(autofocus != null),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        super(
        key: key,
        height: height,
        minWidth: minWidth,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHighlightChanged: onHighlightChanged,
        mouseCursor: mouseCursor,
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        padding: padding,
        visualDensity: visualDensity,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        child: child,
        elevation: elevation,
        focusElevation: focusElevation,
        hoverElevation: hoverElevation,
        highlightElevation: highlightElevation,
        disabledElevation: disabledElevation,
        animationDuration: animationDuration,
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ButtonThemeData buttonTheme = ButtonTheme.of(context);

    double getElevation(MaterialButton button, bool raised) {
      if (button.elevation != null && raised) return button.elevation;
      if (!raised) return 0.0;
      return 2.0;
    }

    double getFocusElevation(MaterialButton button, bool raised) {
      if (button.focusElevation != null && raised) return button.focusElevation;
      if (!raised) return 0.0;
      return 4.0;
    }

    double getHoverElevation(MaterialButton button, bool raised) {
      if (button.hoverElevation != null && raised) return button.hoverElevation;
      if (!raised) return 0.0;
      return 4.0;
    }

    double getHighlightElevation(MaterialButton button, bool raised) {
      if (button.highlightElevation != null && raised)
        return button.highlightElevation;
      if (!raised) return 0.0;
      return 8.0;
    }

    return RawMaterialButton(
      onPressed: loading ? null : onPressed,
      onLongPress: loading ? null : onLongPress,
      onHighlightChanged: onHighlightChanged,
      mouseCursor: mouseCursor,
      fillColor: buttonTheme.getFillColor(this),
      textStyle: theme.textTheme.button
          .copyWith(color: buttonTheme.getTextColor(this)),
      focusColor: buttonTheme.getFocusColor(this),
      hoverColor: buttonTheme.getHoverColor(this),
      highlightColor: buttonTheme.getHighlightColor(this),
      splashColor: buttonTheme.getSplashColor(this),
      elevation: getElevation(this, isRaised),
      focusElevation: getFocusElevation(this, isRaised),
      hoverElevation: getHoverElevation(this, isRaised),
      highlightElevation: getHighlightElevation(this, isRaised),
      disabledElevation: buttonTheme.getDisabledElevation(this),
      padding: buttonTheme.getPadding(this),
      visualDensity: visualDensity ?? theme.visualDensity,
      constraints: buttonTheme.getConstraints(this).copyWith(
        minWidth: minWidth,
        minHeight: height,
      ),
      shape: buttonTheme.getShape(this),
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: buttonTheme.getMaterialTapTargetSize(this),
      animationDuration: buttonTheme.getAnimationDuration(this),
      child: loading
          ? SizedBox(
        width: loadingSize,
        height: loadingSize,
        child: CircularProgressIndicator(
          //loadingSize: loadingSize,
          valueColor: AlwaysStoppedAnimation<Color>(
            AppTheme.black,
          ),
          strokeWidth: 2,
        ),
      )
          : child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<double>(
        'elevation',
        elevation,
        defaultValue: null,
      ),
    );
    properties.add(
      DiagnosticsProperty<double>(
        'focusElevation',
        focusElevation,
        defaultValue: null,
      ),
    );
    properties.add(
      DiagnosticsProperty<double>(
        'hoverElevation',
        hoverElevation,
        defaultValue: null,
      ),
    );
    properties.add(
      DiagnosticsProperty<double>(
        'highlightElevation',
        highlightElevation,
        defaultValue: null,
      ),
    );
    properties.add(
      DiagnosticsProperty<double>(
        'disabledElevation',
        disabledElevation,
        defaultValue: null,
      ),
    );
  }
}