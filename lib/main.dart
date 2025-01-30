import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';

import 'config/routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DocApp(
      initRoute: 'initRoute',
      appRouter: AppRouter(),
    ),
  );
}
