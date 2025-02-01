import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';

import 'config/routes/router.dart';
import 'config/routes/routes_path.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DocApp(
      initRoute: RoutePath.home,
      appRouter: AppRouter(),
    ),
  );
}
