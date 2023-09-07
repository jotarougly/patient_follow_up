part of 'themes.dart';

class IconStyle {
  const IconStyle({
    this.size,
  });

  final double? size;
}

class IconTheme {
  const IconTheme({
    this.small,
    this.medium,
    this.larg,
  });

  final IconStyle? small;
  final IconStyle? medium;
  final IconStyle? larg;
}

IconTheme iconTheme(BuildContext context) {
  return IconTheme(
    small: IconStyle(
      size: ResponsiveValue<double>(
        context,
        defaultValue: 20.0,
        conditionalValues:  [
          Condition.smallerThan(name: helpers.Breakpoint.lxl, value: 16),
        ],
      ).value,
    ),
    medium: IconStyle(
      size: ResponsiveValue<double>(
        context,
        defaultValue: 24.0,
        conditionalValues:  [
          Condition.smallerThan(name: helpers.Breakpoint.lxl, value: 20),
        ],
      ).value,
    ),
  );
}
