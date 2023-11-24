import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.movies));

  void getNavBarItem(NavbarItem navbarItem) => emit(NavigationState(navbarItem));

  void getNavBarItemFromIndex(int index) {
    switch (index) {
      case 0:
        return getNavBarItem(NavbarItem.movies);
      case 1:
        return getNavBarItem(NavbarItem.favorites);
      default:
        return;
    }
  }
}
