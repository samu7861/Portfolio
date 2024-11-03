import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/auto_observer.dart';
import 'config/routes/auto_router_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AutoRouterManager(),
        ),
      ],
      child: MyMaterialApp(),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RootStackRouter appRouter = context.watch<AutoRouterManager>().state;

    return MaterialApp.router(
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          MyObserver(),
        ],
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 169, 183)),
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            iconColor: Colors.white, 
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
