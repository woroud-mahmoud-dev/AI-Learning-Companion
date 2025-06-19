import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

extension EmtptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

double widthOfScreen(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double heightOfScreen(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double assignHeight({
  required BuildContext context,
  required double fraction,
  double additions = 0,
  double subs = 0,
}) {
  return (heightOfScreen(context) - (subs) + (additions)) * fraction;
}

double assignWidth({
  required BuildContext context,
  required double fraction,
  double additions = 0,
  double subs = 0,
}) {
  return (widthOfScreen(context) - (subs) + (additions)) * fraction;
}



extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
