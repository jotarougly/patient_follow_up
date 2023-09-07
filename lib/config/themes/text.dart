part of 'themes.dart';

TextTheme textTheme(BuildContext context) {
  const spacing = 1.5;
  return TextTheme(
    headline1: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 38.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 48.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 30.0),
      ]).value!,
    ),
    headline2: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 34.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 42.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 28.0),
      ]).value!,
    ),
    headline3: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 30.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 38.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 24.0),
      ]).value!,
    ),
    headline4: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 26.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 32.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 22.0),
      ]).value!,
    ),
    headline5: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 22.0, conditionalValues: [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 28.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 18.0),
      ]).value!,
    ),
    headline6: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 18.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 24.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 16.0),
      ]).value!,
    ),
    subtitle1: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 17.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 22.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 15.0),
      ]).value!,
    ),
    subtitle2: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 16.0, conditionalValues: [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 20.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 14.0),
      ]).value!,
    ),
    bodyText1: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 13.0, conditionalValues: [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 15.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 12.0),
      ]).value!,
    ),
    bodyText2: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 11.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 13.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 11.0),
      ]).value!,
    ),
    caption: TextStyle(
      height: spacing,
      fontSize: ResponsiveValue(context, defaultValue: 10.0, conditionalValues:  [
        Condition.largerThan(name: helpers.Breakpoint.lxl, value: 12.0),
        Condition.smallerThan(name: helpers.Breakpoint.t, value: 9.0),
      ]).value!,
    ),
  );
}

extension TransformExtensions on TextStyle {
  TextStyle bold() {
    return copyWith(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle semiBold() {
    return copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle white() {
    return copyWith(
      color: Colors.white,
    );
  }

  TextStyle letterSpace(double? spacing) {
    return copyWith(
      letterSpacing: spacing,
    );
  }

  TextStyle black() {
    return copyWith(
      color: Colors.black,
    );
  }

  TextStyle grey() {
    return copyWith(
      color: Colors.grey[900],
    );
  }

  TextStyle greyLight() {
    return copyWith(
      color: Colors.grey[200],
    );
  }

  TextStyle ellipsis() {
    return copyWith(
      overflow: TextOverflow.ellipsis,
    );
  }
}
