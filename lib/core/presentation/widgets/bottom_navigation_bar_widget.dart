import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../extension/context.dart';
import '../../theme/app_colors.dart';
import '../blocs/navigation/navigation_cubit.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          backgroundColor: AppColors.mineralGreen,
          selectedItemColor: AppColors.cararra,
          items: [
            BottomNavigationBarItem(
              activeIcon: _icon(Icons.movie, AppColors.cararra),
              icon: _icon(Icons.movie, AppColors.edward),
              label: context.translate().bottomNavBarMovies,
            ),
            BottomNavigationBarItem(
              activeIcon: _icon(Icons.favorite, AppColors.cararra),
              icon: _icon(Icons.favorite, AppColors.edward),
              label: context.translate().bottomNavBarFavorites,
            ),
          ],
          onTap: context.read<NavigationCubit>().getNavBarItemFromIndex,
        );
      },
    );
  }

  Widget _icon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
