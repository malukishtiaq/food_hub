import 'package:flutter/material.dart';

import 'global.dart';

Size getScreenSize() {
  final BuildContext? context = scaffoldKey.currentContext;
  if (context != null) {
    return MediaQuery.of(context).size;
  } else {
    return const Size(360, 640);
  }
}
