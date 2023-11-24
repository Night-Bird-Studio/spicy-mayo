import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../di/injection.dart';
import '../../../features/movies/presentation/blocs/favorites/favorites_cubit.dart';
import '../../../features/movies/presentation/blocs/list/movie_list_cubit.dart';
import '../../../features/movies/presentation/pages/favorites_page.dart';
import '../../../features/movies/presentation/pages/movie_list_page.dart';
import '../../extension/context.dart';
import '../../resources/vectors.dart';
import '../blocs/navigation/navigation_cubit.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/top_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: GestureDetector(
          onTap: () async {
            await launchUrl(Uri(scheme: 'https', host: 'www.niji.fr'), mode: LaunchMode.externalApplication);
          },
          child: SvgPicture.asset(Vectors.niji, height: 30),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<MovieListCubit>()..getMovies(context.currentLocale())),
          BlocProvider(create: (_) => getIt<FavoritesCubit>()..retrieveFavorite()),
        ],
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            switch (state.navbarItem) {
              case NavbarItem.movies:
                return const MovieListPage();
              case NavbarItem.favorites:
                return const FavoritesPage();
              default:
                // Should never be reached
                return const SizedBox.shrink();
            }
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
