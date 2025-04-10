import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common_libs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: ColorPalette.iris,
          colorScheme: ColorScheme.fromSeed(seedColor: ColorPalette.iris),
        ),
        initialRoute: Routes.onboarding,
        onGenerateRoute: Pages.onGeneratingRoute,
      ),
    );
  }
}
