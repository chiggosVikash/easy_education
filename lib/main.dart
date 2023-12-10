import 'package:easy_education/features/login/presentation/screens/login_s.dart';
import 'package:easy_education/firebase_options.dart';
import 'package:easy_education/routes/screen_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utils/theme/app_theme.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const ProviderScope(child: MyApp(),));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenRoute = ScreenRoute();
    return MaterialApp(
      initialRoute: LoginS.routeAddress,
      onGenerateRoute: screenRoute.onGenerateRoute,
      title: 'Easy Education',
      darkTheme: AppTheme.darkTheme,
      theme:AppTheme.lightTheme,
    );
  }
}

