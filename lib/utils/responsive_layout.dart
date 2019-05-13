import 'package:flutter_web/material.dart';

/// Helper class for implementing a responsive layout.The parameter [largeChild] is required and must not be null.
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key key,
    @required this.largeChild,
    this.mediumChild,
    this.smallChild,
  })  : assert(largeChild != null),
        super(key: key);

  /// Child to be displayed when the width is greater than 1200.0
  final Widget largeChild;

  /// Widget to be displayed when the width is less than 1200 but greater than 800
  final Widget mediumChild;

  /// Widget to be displayed when the width is less than 800
  final Widget smallChild;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200.0) {
          return largeChild;
        } else if (constraints.maxWidth < 1200.0 && constraints.maxWidth > 800.00) {
          return mediumChild ?? largeChild;
        } else {
          return smallChild ?? largeChild;
        }
      },
    );
  }
}
