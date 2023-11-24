import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/presentation/blocs/navigation/navigation_cubit.dart';
import 'core/presentation/widgets/banner_wrapper.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme.dart';
import 'di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'assets/cfg/app_settings');

  // DI - injectable
  await configureDependencies();

  runApp(const SocleApp());
}

class SocleApp extends StatefulWidget {
  const SocleApp({super.key});

  @override
  State<SocleApp> createState() => _SocleAppState();
}

class _SocleAppState extends State<SocleApp> {
  late NavigationCubit _navigationCubit;

  @override
  void initState() {
    super.initState();
    _navigationCubit = getIt<NavigationCubit>();
  }

  @override
  void dispose() {
    _navigationCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BannerWrapper(
      env: dotenv.get('env'),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<NavigationCubit>.value(value: _navigationCubit),
        ],
        child: MaterialApp.router(
          title: 'Flutter Base Project',
          theme: SocleTheme(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router,
        ),
      ),
    );
  }
}
