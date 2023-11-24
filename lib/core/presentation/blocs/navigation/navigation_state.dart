part of 'navigation_cubit.dart';

enum NavbarItem {
  movies,
  favorites,
}

extension NavbarItemX on NavbarItem {
  int get itemIndex {
    switch (this) {
      case NavbarItem.movies:
        return 0;
      case NavbarItem.favorites:
        return 1;
    }
  }
}

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState(NavbarItem navbarItem) = _NavigationState;

  const NavigationState._();

  int get index => navbarItem.itemIndex;
}
